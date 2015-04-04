# == Schema Information
#
# Table name: feeds
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Feed < ActiveRecord::Base

  has_many :entries

  def download_all_entries
    Feedjira::Feed.fetch_and_parse(
        self.url,
        on_success: download_success,
        on_failure: download_failure
        )
  end

  def add_new_entry_from_feed(entry)
    db_entry = Entry.find_or_create_by(url: entry.url)
    db_entry.set_entry_info(entry)
    db_entry.feed_id = self.id
    db_entry.save
  rescue
    puts db_entry.errors.full_messages
  end

  private

  def download_success
    lambda { |url, feed|
      feed.entries.each do |entry|
        add_new_entry_from_feed(entry)
      end
    }
  end

  def download_failure
    lambda { |curl, err|
      logger.error "Downloading #{curl} failed due to #{error}"
    }
  end
  
end
