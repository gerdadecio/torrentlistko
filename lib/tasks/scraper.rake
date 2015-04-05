require 'open-uri'

namespace :scraper do

  task :scrape_and_save_feed => :environment do
    puts "Enter Website Domain"
    domain = STDIN.gets.strip

    puts "Enter rss list url"
    rss_url = STDIN.gets.strip


    doc = Nokogiri::HTML(open(rss_url || 'http://extratorrent.cc/category/8/TV+Torrents.html'))
    doc.css('td.tabledata1 a').each do |link|
      if link['href'].include? 'rss'
        puts "================ Creating feed for: #{domain}#{link['href']} ====================="
        Feed.find_or_create_by(url: "#{domain}#{link['href']}") 
      end
    end
    puts "===================== DONE! ========================"
    
  end

end