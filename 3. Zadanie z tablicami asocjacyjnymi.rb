#Kinga Stopa
#04-04-2018

=begin 
Zadanie z tablicami asocjacyjnymi
--------------------

 W zadaniu należy zdefiniować dwie tablice asocjacyjne:
 1. Zawierającą nazwy państw i ich dwuliterowe kody np PL (wybrać 6 dowolnych)
 2. Zawierającą listy miast z danego państwa reprezentowanego przez dwuliterowy symbol państwa (wpisać po kilka lub co najmniej jedno miasto w 4 z 6 państw)

Wypisać wszystkie miasta ze wszystkich państw, dla których podane są listy miast.

Przykładowy wynik działania programu:

----------
Miasta w kraju Polska: 
Szczecin
Warszawa
Miasta w kraju Niemcy: 
Berlin
Miasta w kraju Francja: 
Paryz
Miasta w kraju Czechy: 
Praga
Brno


UWAGA: Państwa Węgry i Austria nie są wymienione, bo nie podano dla nich żadnych miast.
=end

puts "Tablica zawierajaca nazwy panstw i ich dwuliterowe kody"
tablica = {
	"PL" => "Polska",
	"US" => "Stany Zjednoczone",
	"SE" => "Szwecja",
	"AU" => "Australia",
	"ID" => "Indonesia",
	"BS" => "Bahamy" 
}


tablica2 = {
	"Polska" => "\n Gorzow Wielkopolski\n Szczecin \n Poznan \n Warszawa \n Krakow \n Wroclaw \n Hel",
	"US" => "\n Hudson\n New York\n Honolulu",
	"SE" => "\n Sztokholm\n Goteborg\n Malmo\n Uppsala",
	"ID" => "\n Kalimantan\n Sumatra\n Nowa Gwinea\n Celebes\n Jawa\n Bali",
}


tablica.each{|x,y|
print "\n #{x} to oznaczenie kraju #{y}"
} 
print "\n"
print "\n"
print "\n"

puts "Tablica zawierajaca listy miast z danego panstwa reprezentowanego przez dwuliterowy symbol panstwa"
tablica2.each{|a,b|
print "\n #{a} to panstwo z nastepujacymi miastami #{b}"}

tablica3 = tablica.merge!(tablica2) {|key,tablica, tablica2| tablica}

print tablica3

=begin
	
Tablica zawierajaca nazwy panstw i ich dwuliterowe kody

 PL to oznaczenie kraju Polska
 US to oznaczenie kraju Stany Zjednoczone
 SE to oznaczenie kraju Szwecja
 AU to oznaczenie kraju Australia
 ID to oznaczenie kraju Indonesia
 BS to oznaczenie kraju Bahamy


Tablica zawierajaca listy miast z danego panstwa reprezentowanego przez dwuliterowy symbol panstwa

 Polska to panstwo z nastepujacymi miastami 
 Gorzow Wielkopolski
 Szczecin 
 Poznan 
 Warszawa 
 Krakow 
 Wroclaw 
 Hel
 US to panstwo z nastepujacymi miastami 
 Hudson
 New York
 Honolulu
 SE to panstwo z nastepujacymi miastami 
 Sztokholm
 Goteborg
 Malmo
 Uppsala
 ID to panstwo z nastepujacymi miastami 
 Kalimantan
 Sumatra
 Nowa Gwinea
 Celebes
 Jawa
 Bali{"PL"=>"Polska", "US"=>"Stany Zjednoczone", "SE"=>"Szwecja", "AU"=>"Australia", "ID"=>"Indonesia", "BS"=>"Bahamy", "Polska"=>"\n Gorzow Wielkopolski\n Szczecin \n Poznan \n Warszawa \n Krakow \n Wroclaw \n Hel"}[Finished in 0.2s]
	
=end