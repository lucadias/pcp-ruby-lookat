class Rechner
    def add2nums(var1, var2)
        var1.+(var2)
    end
end

rechnerobjekt = Rechner.new

def rechnerobjekt.multi2nums(num1,num2)
    num1.*(num2)
end

puts rechnerobjekt.add2nums(5,2)

puts rechnerobjekt.multi2nums(10,2)



