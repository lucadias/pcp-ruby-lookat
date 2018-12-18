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




puts "Gib eine Zahl ein:"
x = gets.chomp.to_i 
puts "Die #{x}. Fibonacci-Zahl ist: " + fibonacci( x ).to_s


#Fibonacci mit memoization -> https://github.com/renshuki/fibonacci-ruby/blob/master/memoization.rb
	#startIndex = ARGV[0].to_i
	#endIndex = ARGV[1].to_i
	#@cache = [0,1]

	#def fibonacci(n)
	#  return @cache[n] if @cache[n]
	#  @cache[n] = fibonacci(n-1) + fibonacci(n-2)
	#end

	#(startIndex..endIndex).each do |n|
	#  puts fibonacci(n)
	#end

