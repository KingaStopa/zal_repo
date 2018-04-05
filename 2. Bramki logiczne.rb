#Kinga Stopa
#04-04-2018
=begin 
----
Bramki logiczne
----
Napisać program, w którym zdefiniowane są funkcje/bramki:
- gAnd - Jako parametr funkcji może zostać podana dowolna liczba binarnych wejść.
- gOr - Jako parametr funkcji może zostać podana dowolna liczba binarnych wejść.
- gXor -  Bramka dwuwejściowa
- gNot - Bramka jednowejściowa

Każda funkcja ma działać jak określona w nazwie bramka binarna.

Przykładowy wynik działania programu:

----------
#puts gOr(FALSE, TRUE, FALSE, FALSE)
true
#puts gXor(TRUE, TRUE)
false
----------
=end

def function(val)
	if val == FALSE
		puts 0
	else
		puts 1
	end
end

puts "Bramki dzialaja na liczbach 1 i 0"

print "Enter boolean 1:"
bool_1 = gets.to_i
print "Enter boolean 2:"
bool_2 = gets.to_i

puts "\n"

puts "bramka AND: "
puts (bool_1 and bool_2).to_s

puts "bramka OR: "
puts (bool_1 or bool_2).to_s

puts "bramka XOR: "
puts (bool_1^bool_2).to_s

puts "bramka NOT z wartosci bool_1: "
if bool_1 == 1
	puts "0"
end
if bool_1 == 0
	puts "1"
end

puts "\n"

=begin
	
Bramki dzialaja na liczbach  1 i 0
Enter boolean 1: 1
Enter boolean 2: 0

AND:
0
OR:
1
XOR:
1
NOT z wartosci bool_1:
0
	
end
=end