def max_rot(n)
	ar=[]
	numbers=n.to_s.split(//)
  numbers.map.with_index do |i,idx|
  r = numbers[idx..-1].rotate
	numbers[idx..-1] = r
	ar << "#{numbers}"
end
  
  ar.map!{|i|i.gsub!(/[^0-9\-]/,'')}
  ar.map{|i| i.to_i}.max
end

max_rot(38458215)