require 'nokogiri'

file = File.open('./html/data.html', 'r') { |file| file.readline }

document = Nokogiri::HTML(file)

divs = document.css('div._2aBzC')

divs.each do |div|
  p div.css('div.TbtXF span.N2dUK').text
  puts '='*20
end
