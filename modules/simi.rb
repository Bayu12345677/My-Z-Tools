require	'rubygems'
require	'faraday'
require	'json'

class Simi
	def initialize(text, bahasa)
		@send = text
		@opsi = bahasa
	end
	
	def get
		conn = Faraday.new("https://api-sv2.simsimi.net/v2/?text=#{@send}&lc=#{@opsi}&cf=false&key=API-1234-abcd-1234-abcd", ssl: {verify: false})
		respon = conn.get

		b = JSON.parse(respon.body)
		return b['success']
	end
end

a = "#{ARGV[0]}"
b = "#{ARGV[1]}"

chat = Simi.new(a, b)

puts chat.get
