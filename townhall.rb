#! /usr/bin/env ruby

require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Etape 1
# puts "### Search for nodes by css"
BASE_URL = "http://annuaire-des-mairies.com/"

def email_of_a_townhall(path)
	html_content = open("#{BASE_URL}#{/95/vaureal.html}")
	document = Nokogiri::HTML(html_content)
	email = document.css("p.Style22")[11].text
email.strip.gsub(" ", " ")
end

puts email_of_a_townhall(path)

=begin
#Etape 2
=begin
def get_all_the_urls_of_val_doise_townhalls
	scrapeallurls = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	ndd = "http://annuaire-des-mairies.com"
	scrapeallurls.css('a.lientxt').each do |chose|
		puts ndd + chose ["href"]
end 


#Etape 3
#Recoller tout ça
=begin
def get_all_the_urls_of_val_doise_townhalls
	scrapeallurls = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	ndd = "http://annuaire-des-mairies.com"
	scrapeallurls.css('a.lientxt').each do |chose|
		puts ndd + chose ["href"]
	end
end


def get_all_the_emails_of_val_doise_townhalls
	scrapetown = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

	scrapetown.css('a.lientxt').each do |chose|

		stockage = Hash.new
		urlgot = ndd + chose ["href"]
		villegot = chose.text

		stockage[:"#{villegot}"] = "#{urlgot}"
		stockage[:test] = 10
		puts urlgot
	end
end

puts get_all_the_emails_of_val_doise_townhalls
=end