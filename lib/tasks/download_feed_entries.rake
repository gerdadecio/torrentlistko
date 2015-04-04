desc "Download entries of each feed"
task :download_feed_entries => :environment do
  Feed.all.each {|feed| feed.download_all_entries}
end