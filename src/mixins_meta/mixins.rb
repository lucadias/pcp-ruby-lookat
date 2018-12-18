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

rechnerobjekt = Rechner.new

puts rechnerobjekt.add2nums(5,2)

rechnerobjekt.extend Substraction

puts rechnerobjekt.multiply2nums(4,4)

puts rechnerobjekt.sub2nums(10,7)