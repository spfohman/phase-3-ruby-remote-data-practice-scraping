require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
puts doc.css(".heading-financier").text.strip

courses = doc.css(".card-feature")
courses.each do |course|
    puts course.text.strip
end
p doc.css(".card-feature")[0].attributes