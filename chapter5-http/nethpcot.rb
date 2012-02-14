# nethpcot.rb
require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
# puts "Page title is: " + page.at(:title).inner_html
text = page.at(:body).inner_html
puts text.scan(/[\s]+the[\s\.,!]+/i).count.to_s