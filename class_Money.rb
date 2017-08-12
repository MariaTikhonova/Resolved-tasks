class Money

attr_accessor :long, :unsigned_char

def initialize(long,unsigned_char)
@long=long
@unsigned_char=unsigned_char
end

def print_sum
puts @print_sum="#{@long},#{@unsigned_char}"
end

def operations
@sum="#{@long}.#{@unsigned_char}".to_f
num=gets.chomp.to_f
p @add=@sum+num
num=gets.chomp.to_f
p @substract=@sum-num
num=gets.chomp.to_f
p @multiply=@sum*num
num=gets.chomp.to_f
p @divide=@sum/num
end

end

sum1=Money.new(1333,2798)
sum1.print_sum
sum1.operations