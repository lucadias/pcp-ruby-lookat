#Module
module Multiply
    def multiply2nums(num1,num2)
        num1.*(num2)
    end
end


module Substraction
    def sub2nums(num1,num2)
        num1.-(num2)
    end
end

#Klasse definieren
#Mixins
class Rechner
    include Multiply
    def add2nums(var1, var2)
        var1.+(var2)
    end
end

rechi = Rechner.new

puts rechi.add2nums(5,2)


#dynamische klasse erweitern
rechi.extend Substraction

puts rechi.multiply2nums(4,4)

puts rechi.sub2nums(10,7)