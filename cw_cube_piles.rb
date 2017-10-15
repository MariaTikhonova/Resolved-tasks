def find_nb(m)
n=1
result=1
ar=[]
while result < m
ar<<n**3
n+=1
result=ar.inject(:+)
end
return -1 if result != m
return Math.cbrt(ar.last+1).to_i #same as return n-1
end
