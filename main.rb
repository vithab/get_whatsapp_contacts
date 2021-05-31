require 'nokogiri'

file_name = 'data'
contacts = []

file = File.open("./html/#{file_name}.html", 'r') { |file| file.readline }

document = Nokogiri::HTML(file)

divs = document.css('div._2aBzC')

divs.each do |div|
  phone = div.css('div.TbtXF span.N2dUK').text
  name = div.css('div.TbtXF div._15smv span._3-8er').text
  contacts.push("#{phone} - #{name}")
end

contacts.map { |c| File.write("./result/#{file_name}.txt", "#{c}\n", mode: 'a') }
