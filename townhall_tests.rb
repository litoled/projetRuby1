require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhall_from_its_webpage
	scrapemail = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
	scrapemail.css('p.Style22')[1].text
	puts 
end

puts get_the_email_of_a_townhall_from_its_webpage
