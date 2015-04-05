class FeedEntriesJob
  @queue = :feed

  def self.perform
    Feed.all.each {|feed| feed.download_all_entries}
  end

  def work
    # convert some kind of image here
  end
end