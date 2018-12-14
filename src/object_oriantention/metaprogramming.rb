class Class
    def superhiddenfunction
      "you found me"
    end
end



puts Class.superclass.superclass
class Rechner
    def add2nums(var1, var2)
        var1.+(var2)
    end
end

rechi = Rechner.new

def rechi.multi2nums(num1,num2)
    num1.*(num2)
end

puts rechi.add2nums(5,2)

puts rechi.multi2nums(10,2)