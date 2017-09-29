def solution(number)
return 0 if number == 0
i = 1
ar= []
while i < number
	
if i % 3 == 0 || i % 5 == 0
ar << i
elsif i % 3 == 0 && i % 5 == 0
ar << i
else
end
i+=1
end
p ar.join(', ')
return ar.reduce(:+)
end