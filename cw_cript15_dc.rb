def encode(message, key)
	ary=message.split(//)
	 keys=key.to_s.chars.map { |e|  e.to_i}
 string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
 mes_new=string_AZ.select{|k,v| k=ary.index(k)}
 new_ar=ary.map {|i| p mes_new[i]}

 keys2=keys.cycle(5).to_a.take(new_ar.length)

 keys3= Array.new.push(new_ar,keys2)
return keys3.transpose.map{|arr| arr.inject{|sum, element| sum+element}}
end

encode("masterpiece", 1939)