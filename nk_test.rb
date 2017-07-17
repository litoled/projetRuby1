require 'rubygems'
require 'nokogiri'      

page = Nokogiri::HTML(open("Google_page1.html")) 
puts page.class   # => Nokogiri::HTML::Document