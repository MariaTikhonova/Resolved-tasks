def dont_give_me_five(start_,end_)
  range=(start_...end_).to_a
  range.delete_if {|x| x.to_s.include?("5")}
   if end_.to_s.include?("5")
   else
   range.push end_
   end
n=range.length
return n
end