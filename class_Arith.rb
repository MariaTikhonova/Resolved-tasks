class Arith
def initialize(i)
@i=i
end

def add(s)
data={"zero":0, "one":1, "two":2,"three":3,"four":4, "five":5,"six":6,"seven":7,"eight":8,"nine": 9,"ten":10,"eleven":11,"twelve":12,"thirteen":13,"fourteen":14,"fifteen":15,"sixteen":16,"seventeen":17,"eighteen":18,"nineteen":19,"twenty":20}
number=data.select{|k,v| k==s.to_sym}.values[0]
word=data.select{|k,v| k==@i.to_sym}.values[0]
sum= word + number
return selected=data.select{|k,v| v==sum}.keys[0].to_s
end

end