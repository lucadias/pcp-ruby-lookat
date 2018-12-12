# TODO

## Pragmatische Fragen
- Typenmodell (wahrscheinlich dynamisch)
- Hauptprogrammiermodell (objektorientiert, funktional, prozedural? Oder etwas hybrides, d.h. ist es eine Multi-Paradigmen-Sprache? Welche Paradigmen?)
	multi:
		objeckt
		funktional
		imperativ
- Wie laufen Programme (Kompiliert? Interpretiert? Auf virtueller Maschine?)
- Was sind wichtigsten Entscheidungskonstrukte? (if & while (imperativ), Pattern Matching (Erlang), Matching & Backtracking (Prolog))
- Was sind die wichtigsten Datenstrukturen? (Collection integriert, Listen/Array)


## Spannende Themen
- Objektorientierung: Vererbung, Mixins und Meta-Klassen
	- Ruby is a perfect Object Oriented Programming Language.
		- Data Encapsulation
		- Data Abstraction
		- Polymorphism
		- Inheritance
	- As a language, Ruby is an interpreted, object-oriented, dynamically typed language from a family of so-called scripting languages.
- Metaprogrammierung
- Continuations
- Sigils
	```
	no sigil	- Local Variables		- Scope Variables, Temporary Variables
	@			- Object Variables		- Instance Variables, Member Variables, Members
	$			- Global Variables		- probably also Global Variables
	@@			- Class Variables		- Static Variables (although, not strictly speaking the same thing)
	*			- Listed Arguments		- Probably the same thing. Put this in a method definition’s parameters and it’ll put them in an array for you
	&			- Code Block parameter	- As above, but for code blocks/td>
	```

	Convention to add ? (method returns boolean) or ! (method alters object) to the end of the method name