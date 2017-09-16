n = gets.strip.to_i
arr = gets.strip
arr1=arr.split(' ').map(&:to_i).reverse
arr1. map do |i| 
  print i
 print ' '.to_s    
    arr1.delete(0)
    end