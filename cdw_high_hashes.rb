def high(x)
x.gsub!(/[0-9]/, '') 
subary_find=x.downcase.split
ary=x.split(//)
string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
hash_new=string_AZ.select{|k,v| k=ary.index(k)}
subary_mod= subary_find.map{|i| i.split(//).map{|i| hash_new[i]}}
subary_mod.map!{|i| i.compact}
 sums=subary_mod.map{|arr| arr.inject{|sum, element| sum+element}}
 sums_hash = Hash[(subary_find).zip(sums)]
 output=sums_hash.max_by{|k,v| k;  v}
return output[0]
end

high('man I need a taxi up to ubud')
high('what time are we climbing up the volcano')
high('what time are we climbi55ng')