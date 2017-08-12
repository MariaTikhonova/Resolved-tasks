def binary(a,b)
number=a+b
ar=[]
i=0
until number==0
puts number	
i= number % 2
number/=2

bin=ar.push(i)

end
n=bin.reverse
r=n.to_s.delete "[,], "
puts r
end


binary(100,56)