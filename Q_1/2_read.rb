require 'net/http'
require 'json'

# Read All

url = "https://reqres.in/api/users?page=2"
uri = URI(url)

puts "   "
puts "*** Read All Record ***"
puts "   "

response_all = Net::HTTP.get(uri)

puts JSON.parse(response_all)

# Read One

url = "https://reqres.in/api/users/2"
uri = URI(url)

puts "   "
puts "*** Read One Record ***"
puts "   "

response_one = Net::HTTP.get(uri)

puts JSON.parse(response_one)

