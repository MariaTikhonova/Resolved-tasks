def sequence_sum(begin_number, end_number, step)
ar=(begin_number..end_number).step(step).to_a
s=0
for i in 0..ar.length-1
  s+=ar[i].to_i
end
return s
end