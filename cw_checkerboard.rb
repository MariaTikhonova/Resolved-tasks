# Checkerboard method
def checkerboard(size)
return "" if size <= 0
ar=Array.new(size)
rows=Array.new(size)
result=[]
rows.map.with_index do |i, indx| 
if indx.even?
col=ar.map.with_index do |elem,idx|
	 if idx.even?
	 	elem = '[r]'
     else
	   elem = '[b]'
	end
   end
result << (col.join)+ "\n"
else  
col=ar.map.with_index do |elem,idx|
	 if idx.even?
	 	elem = '[b]'
   else
	   elem = '[r]'
	end
     end
 result << (col.join)+ "\n"
 
end
end

return result.join
