module VatPrice
	def vat_price
	@vat_price=(@price*1.2).to_f
p "Price including VAT: #{@vat_price}"
end
end

class Products
@@number_of_order=0
attr_accessor :name, :articul, :price

def initialize(name, articul, price)
@name=name
@price=price
if name== ''
	raise "You should print name of a product here"
end
	@@number_of_order+=1	
p "The new item:"
p "#{@@number_of_order}__#{articul}__#{@name}"
p "#{@name}: #{price} uah" 

end

def quantity
	p "Quantity:"
	@quantity=gets.chomp.to_i
	p "#{@name}: #{@quantity}"
end 

def on_warehouse
if @quantity>0 
@on_warehouse= true 
p 'presents on warehouse'
p '___________________'
else
@on_warehouse= false
p 'absent on warehouse'
p '___________________'
end

def diameter(diameter)
@diameter=diameter
p "#{@name}: diameter #{@diameter} mm"
end

end


end

class Pipes< Products

attr_accessor :length

def length(length)
@length=length
	p "#{@name}: #{@length} m"
end

end

class Fittings< Products
	include VatPrice
end
class Angle < Fittings
	def angle 
		if @articul==450689
		@angle = 45
			p "#{@name}: 45 degrees angle"
	else
		@angle=90
		p "#{@name}: 90 degrees angle"
	end
	end
end
class Loft < Fittings
def discount_price
	@discount_price=(@price*0.75).to_f
puts "Discount price:	#{@discount_price}"
end
end
class Taps< Products

def hot_cold(type)
if type==1
	p 'Cold'
else
	p 'Hot'
end 
end

end 


pipe16=Pipes.new("Pipe 16mm", 32060, 16.80)
pipe16.price
pipe16.quantity
pipe16.on_warehouse
pipe16.length=3
pipe16.diameter(16)

angle45=Angle.new("Angle 16/45", 450689, 3.09)
angle45.price
angle45.quantity
angle45.on_warehouse
angle45.diameter(16)
angle45.angle
angle45.vat_price

loft20=Loft.new("Loft 20", 20375, 1.02)
loft20.price
loft20.quantity
loft20.on_warehouse
loft20.diameter(20)
loft20.discount_price

taph16=Taps.new("Tap 16", 10101, 20.00)
taph16.price
taph16.quantity
taph16.on_warehouse
taph16.diameter(16)
taph16.hot_cold(1)
