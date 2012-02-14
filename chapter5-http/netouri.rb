# netouri.rb
require 'open-uri'

# f = open('http://rubylearning.com/data/text.txt')
f = open('http://satishtalim.github.com/webruby/chapter3.html')
text = f.readlines.join
puts text.scan(/[\s]+the[\s\.,!]+/i).count.to_s