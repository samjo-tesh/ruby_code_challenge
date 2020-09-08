require 'net/http'
require 'json'

# Create

url = "https://reqres.in/api/users"
uri = URI(url)

puts " "
puts "*** Create New ***"
puts " "

response = Net::HTTP.post_form(uri, {'name': 'Samuel Teshome', 'job': 'Ruby Software Engineer'})

puts response.code
puts JSON.parse(response.body)
