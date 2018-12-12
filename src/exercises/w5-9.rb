# Woche 5 Übung 9
#
#
#Bei Skelettfunden schließt man aus der Länge der Knochen auf die Körpergröße; und zwar gilt (als
#	statistischer Mittelwert) in cm:
#	 Körpergröße = 69.089 + 2.238 * Oberschenkelknochenlänge bei Männern
#	 Körpergröße = 61.412 + 2.317 * Oberschenkelknochenlänge bei Frauen
#	Ab dem 30. Lebensjahr nimmt die Körpergröße um 0,06 cm pro Jahr ab.
#	a) Definieren Sie einen Datentyp human mit den Feldern Alter, Geschlecht und
#	Oberschenkelknochenlänge.
#	b) Erstellen Sie eine Funktion b-length, die aus einem Objekt vom Typ human die
#	vermutete Körpergrösse berechnet.
#

class Human 

	@alter
	@oberschenkelknochenlänge
	@geschlecht
	
	def initialize(alter, oberschenkelknochenlänge, geschlecht)
		@alter = alter
		@oberschenkelknochenlänge = oberschenkelknochenlänge
		@geschlecht = geschlecht
	end

	def b_length 
		return @alter >= 30 ? 69.089 + 2.238 * @oberschenkelknochenlänge - (@alter-30) * 0.06   : 69.089 + 2.238 * @oberschenkelknochenlänge if @geschlecht == "m"
		@alter >= 30 ? 69.089 + 2.238 * @oberschenkelknochenlänge - (@alter-30) * 0.06   :  61.412 + 2.317 * @oberschenkelknochenlänge if @geschlecht == "f"
	end		
end

luca = Human. new(33, 50, "m")
puts luca.b_length


ana = Human. new(20, 50, "f")
puts ana.b_length