def pattern(n)

ar=(0..n).to_a
ar1=[]
while ar.size > 0

ar.delete_at(0)

ar1.push(ar.join)
end
return ar1.join("\n").chomp
if n<=0
return ""
end
end

pattern(4)
pattern(1)
pattern(2)
