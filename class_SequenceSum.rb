class SequenceSum
  def self.show_sequence(n)
    ar=[]
    i=-1
   
    while i!=n
    i+=1
    ar.push(i)
    end
    a=ar.inject(0){|x,y|x+y}
   d=ar.map{|i|i.to_s+"+"}
     s=d.to_s.delete '[]" ", '
     s.chomp!("+")
    if n==0
    return "0=0"
    elsif n<0
    return "#{n}<0"
  
    end
    return "#{s} = #{a}"
    
  end
end