#Code aus: https://de.wikibooks.org/wiki/Ruby-Programmierung:_Vererbung
class Plant
    def initialize(name)
        @name = name
    end
end

class Tree < Plant
    def initialize(name)
        super(name)
        @has_trunk = true
    end
    def get_name()
        @name
    end
    def get_has_trunk()
        @has_trunk
    end
end


birke = Tree.new("birke")

puts birke.get_name
puts birke.get_has_trunk