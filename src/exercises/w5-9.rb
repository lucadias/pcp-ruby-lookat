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

	def initialize(alter, oberschenkelknochenlänge, geschlecht)
		@alter = alter
		@oberschenkelknochenlänge = oberschenkelknochenlänge
		@geschlecht = geschlecht

	end

	def b_length 
		if(@alter >= 30)
			return 69.089 + 2.238 * @oberschenkelknochenlänge - (@alter-30) * 0.06 if @geschlecht == "m"
			return 61.412 + 2.317 * @oberschenkelknochenlänge - (@alter-30) * 0.06 if @geschlecht == "f"
		end
		return 69.089 + 2.238 * @oberschenkelknochenlänge if @geschlecht == "m"
		return 61.412 + 2.317 * @oberschenkelknochenlänge if @geschlecht == "f"
	end		
end

luca = Human. new(30, 50, "m")
puts luca.b_length

beni = Human. new(32, 50, "m")
puts beni.b_length

ana = Human. new(40, 50, "f")
puts ana.b_length
		
		
