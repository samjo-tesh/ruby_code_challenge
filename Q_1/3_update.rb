require 'net/http'
require 'json'

# Update

url = "https://reqres.in/api/users/2"
uri = URI(url)
params = { 'name': 'Samuel Teshome', 'job': 'Ruby Software Engineer' }

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true  

# PUT

puts " "
puts "*** Update with PUT ***"
puts " "

request_put = Net::HTTP::Put.new(uri.path, {'Content-Type' =>'application/json'})
request_put.body = params.to_json
response_put = http.request(request_put)

puts response_put.code
puts JSON.parse(response_put.body)

# PATCH

puts " "
puts "*** Update with PATCH ***"
puts " "

request_patch = Net::HTTP::Patch.new(uri.path, {'Content-Type' =>'application/json'})
request_patch.body = params.to_json
response_patch = http.request(request_patch)

puts response_patch.code
puts JSON.parse(response_patch.body)
