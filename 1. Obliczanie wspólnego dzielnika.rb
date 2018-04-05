#Kinga Stopa
#04-02-2018
#-------
#Obliczanie największego wspólnego dzielnika 2 liczb:
#-------
#Napisać funkcję obliczającą największy wspólny dzielnik dla dwóch zadanych liczb zgodnie z regułami :

#1. Jeżeli liczba x2 jest równa 0 to NWD jest równy x1
#2. Jeżeli liczba x1  jest większa od x2 to NWD jest równy wynikowi z obliczenia NWD dla liczb x2 i reszty z dzielenia x1 przez x2
#3. Jeżeli liczba x2  jest większa od x1 to NWD jest równy wynikowi z obliczenia NWD dla liczb x1 i eszty z dzielenia x2 przez x1

#Przykładowe działanie programu:

#----------
#puts nwd(5,10)
#5
#----------


class NWD
	def liczby(a,b)
		@a = a
		@b = b
		liczby_reguly
	end

	def liczby_reguly
		if @a > @b
			@wieksza_liczba = @a
			@mniejsza_liczba = @b
		else
			@wieksza_liczba = @b
			@mniejsza_liczba = @a
		end
	end

	def obliczenia
		reszta = 1
		dzielna = @wieksza_liczba
		dzielnik = @mniejsza_liczba
		until reszta == 0
			reszta = dzielna % dzielnik
			dzielna = dzielnik
			dzielnik = reszta
		end
		dzielna
	end
end