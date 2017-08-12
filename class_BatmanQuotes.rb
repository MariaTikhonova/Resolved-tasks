class BatmanQuotes
  def self.get_quote(quotes, hero)

num=num=hero.gsub(/[^0-9]/, '')
  if hero[0]=="B"
	hero="Batman"
elsif hero[0]=="R" && hero.length==5
	hero="Robin"
  elsif hero[0]=="J"
	hero="Joker"
end

quotes.each_with_index{|i,idx| return "#{hero}: #{i}" if idx==num.to_i}
  end

end