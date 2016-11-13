class Calculator
def initialize
@add=Add.new
@sub=Subtraction.new
@mult=Multiply.new
@dev=Devide.new
@sqrt=Square.new
end
	def Dodawanie(a,b)
		return @add.suma(a,b)
	end
	def Odejmowanie(a,b)
		return @sub.odejmowanie(a,b)
	end
	def Mnozenie(a,b)
		return @mult.mnozenie(a,b)
	end
	def Dzielenie(a,b)
		return @dev.dzielenie(a,b)
	end
	def Pierwiastkowanie(a)
		return @sqrt.pierwiastkowanie(a)
	end
end
class Add

	def suma (a,b)
	return a+b
	end
end
class Subtraction

	def odejmowanie (a,b)
	return a-b
	end
end
class Multiply

	def mnozenie(a,b)
	return a*b
	end
end
class Devide

	def dzielenie(a,b)
		if(b==0)
			raise ArgumentError.new('Nie mozna dzielic przez 0.')  
		end
		return a/b
	end
end
class Square
	
	def pierwiastkowanie(a)
		return Math.sqrt(a)
	end
end
