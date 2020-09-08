require 'net/http'

# Delete

url = "https://reqres.in/api/users/2"
uri = URI(url)

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true  

puts " "
puts "*** Delete ***"
puts " "

request = Net::HTTP::Delete.new(uri.path)
response = http.request(request)

puts response.code
puts response.message
