# Woche 3 Übung 1
#
#
#1. Endrekursive Fibonacci-Berechnung mit Ein- und Ausgabe
#In der Vorlesung wurde eine endrekursive Prolog-Implementierung für Fibonacci-Zahlen
#besprochen. Implementieren Sie nun ein Prädikat io_fib/0 so, dass der Benutzer zuerst eine Zahl
#eingeben muss, und dann die dazugehörende Fibonacci-Zahl ausgegeben wird. Hinweis: Verwenden
#Sie dazu das im Unterricht gezeigte, endrekursive Prädikat fib_tr/2 und die beiden eingebauten
#Prolog-Prädikate read/1 und write/1.
#Hier ein Beispiel-Aufruf von io_fib/0 in der Prolog-Konsole:
#?- io_fib.
#Gib eine Zahl ein: 7.
#Die 7. Fibonacci-Zahl ist 13
#

def fibonacci(n)
	n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end

#def fibonacci( n )
#    return  n  if n <= 1 
#    fibonacci( n - 1 ) + fibonacci( n - 2 )
#end 

puts "Gib eine Zahl ein:"
puts "Die 7. Fibonacci-Zahl ist: " + fibonacci( gets.chomp.to_i ).to_s
