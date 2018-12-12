# Woche 8 Übung 1
#
# Implementieren Sie eine Methode, welche für einen Array von Ganzzahlen diese Zahlen sowie die dazugehörigen Quadratzahlen ausgibt.
# - Foreach
# - Lamdba

class Integer
	def square
		self*self
	end
end

_arr = [1, 2, 3, 5, 8]

_arr.each{|num|
	print "#{num}:"
	print " #{num.square()}\n"
}