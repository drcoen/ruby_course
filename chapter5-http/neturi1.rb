# neturi1.rb
require 'net/http'

# uri = URI('http://rubylearning.com/data/text.txt')
uri = URI('http://satishtalim.github.com/webruby/chapter3.html')
res = Net::HTTP.get_response(uri)
# puts res.code    # => '200'
# puts res.message # => 'OK'

data = Net::HTTP.get(uri) # => String
puts data.scan(/[\s]+the[\s\.,!]+/i).count.to_s