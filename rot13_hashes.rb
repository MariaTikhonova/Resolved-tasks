def rot13(secret_messages)
    ary=secret_messages.map{|i| i.split(//)}.flatten

 string_AZ =  Hash[("a".."z").to_a.zip((1..26).to_a)]
    mes_new=string_AZ.select{|k,v| k=ary.index(k)}
    new_ar= ary.map{|i| mes_new[i]}
   d=[]
   new_ar.each do |i|
   	if i>=13 
   		p s=i-13
      d.push(s)
   	else
   		 p l=i+13
       d.push(l)
   	end
   	end
    h3=string_AZ.select{|k,v| k=d.index(v)}
  string_126 = Hash[(1..26).to_a.zip(("a".."z").to_a)]
   s=  d.map{|i| string_126[i]}.join
s.split
c=s.slice!(0,secret_messages[0].length)
 p result= Array.new.push(c,s)
end

rot13(["why", "did"])
# ["jul","qvq"]
