class OrangeTree

def initialize name
@name=name
@age=0
@height=0
@fruitnum=0
puts @name +'is born'
@alive=true 
@getfruit=0
@fruitleft=0

end

def age 
if @age<=81
@age+=1
puts "the orange tree #{@name} is growing up to #{@age} years"
else
 	@alive==false
 	puts "Tree is dead"	
 exit
 end

end

def height 
@age+=1
@height+=30
puts "the orange tree #{@name} is growing up as #{@age} years pass to #{@height} cm"

end

def oneYearPasses
	while @alive==true && @age<=81
		@age+=1
		@height+=30

		puts "It is #{@age} years old"
		puts "It is #{@height} cm high"
if @age>11 && @age<=35
	@fruitnum+=rand(32)
	puts "Tree has #{@fruitnum} fruits now" 
	
elsif @age>35
	@fruitnum+=rand(50)
	puts "Tree has #{@fruitnum} fruits now"
	puts "There are #{@fruitsleft} of oranges left and falled from the last year"
	pickAnOrange
		end		
end

end

def countTheOranges
@alive==false && @age==81
  	puts "At #{@age} #{@name} has #{@fruitnum} of oranges"
    	puts "Tree is dead"	
 end


def pickAnOrange
	@fruitnum
	@fruitsleft 
	@getfruit
if @age!=82
				@fruitnum-=1 
			puts "Picking an orange, it was tasty"
			@getfruit=(@fruitnum-=1)-rand(100)
		  
  @fruitsleft=@fruitnum-@getfruit
  puts " #{@fruitsleft} of oranges is left to eat this year"
else
end
end

end

tree=OrangeTree.new "Ema"
tree.age
tree.height 
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange