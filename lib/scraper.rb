require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

titles = doc.css(".title-oE5vT4")

titles.each do |title| 
  puts title.text.strip 
end 
