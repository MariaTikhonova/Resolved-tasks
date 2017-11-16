#With TDD testing requirements of both calling vert_mirror and hor_mirror and one return
def vert_mirror(strng)
d=strng.split
d.map{|i| i.reverse}.join("\n") 
end

def hor_mirror(strng)
strng.split.reverse.join("\n")
end


fct=Proc.new do |s|
vert_mirror(s)
hor_mirror(s)
end


def oper(fct, s) 
fct.call(s)
end 
