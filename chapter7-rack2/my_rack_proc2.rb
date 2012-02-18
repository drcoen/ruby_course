require 'rack'

my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed is: #{ARGV[0]} "]] }
Rack::Handler::WEBrick.run my_rack_proc, :Port => 8500
