# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  feed_id    :integer
#  title      :string(255)
#  published  :datetime
#  image_url  :string(255)
#  summary    :text
#  created_at :datetime
#  updated_at :datetime
#  categories :text             default("--- []\n")
#  url        :string(255)
#

class Entry < ActiveRecord::Base
  belongs_to :feed
  serialize :categories, Array

  scope :search_by_title, -> search_text { where('LOWER(title) LIKE ?', search_text.downcase) }

  def set_entry_info(entry)
    self.attributes = {
             title: entry.title,
        categories: entry.categories,
         published: entry.published,
      download_url: entry.image,
         image_url: parse_image_url(entry.summary),
           summary: entry.summary,
               url: entry.url
    }
  end

  private

  def parse_image_url(text)
    tokens = HTML::Tokenizer.new text
    tags = []
    while token = tokens.next
      node = HTML::Node.parse(nil, 0, 0, token, false)
      tags << node if node.tag? and node.closing != :close
    end
    tags.select{|t| t.name == 'img'}.first.attributes['src']
  rescue
    nil
  end
end
  
