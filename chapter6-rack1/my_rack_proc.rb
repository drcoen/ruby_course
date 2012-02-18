my_rack_proc = lambda {|env| [200, {'Content-type' => '/text/plain',}, ["Hello. The time is #{Time.now}"]]}
puts my_rack_proc.call({})

if ARGV[0]
  my_rack_proc2 = lambda {|env| [
    200,
    {'Content0type' => 'text/plain'},
    ["Command line argument you typed was : #{env}"]
  ]}
  puts my_rack_proc2.call(ARGV[0])
end