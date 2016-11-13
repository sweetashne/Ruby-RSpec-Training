require_relative 'test'
describe Calculator do
before :each do
		@sut = Calculator.new
	end
	
	describe "#suma dodatnich argumentow" do
	
		it "Test sumy liczb dodatnich" do

		/act/
		actual = @sut.Dodawanie(1,9)
		
		/assert/
		actual.should eql 10
		end
	end
	
	describe "#suma jeden argument dodadni drugi ujemny" do
	
		it "Test sumy liczb, gdy jedna jest ujemna, a druga dodatnia " do

		/act/
		actual = @sut.Dodawanie(-10,8)
		
		/assert/
		actual.should eql -2
		end
	end
	
	describe "#suma ujemnych argumentow" do
	
		it "Test sumy liczb, gdy obie są ujemne" do

		/act/
		actual = @sut.Dodawanie(-9,-5)
		
		/assert/
		actual.should eql -14
		end
	end
	
	describe "#odejmowanie dodatnich argumentow" do
	
		it "Test odejmowania liczb dodatnich " do

		/act/
		actual = @sut.Odejmowanie(5,3)
		
		/assert/
		actual.should eql 2
		end
	end
	
	describe "#odejmowanie jednego ujemnego argumentu" do
	
		it "Test odejmowania,gdy jedna liczba jest ujemna, a druga dodatnia" do

		/act/
		actual = @sut.Odejmowanie(-7,4)
		
		/assert/
		actual.should eql -11
		end
	end
	
	describe "#odejmowanie dwoch ujemnych argumentow" do
	
		it "Test odejmowania,gdy obie liczby sa ujemne" do

		/act/
		actual = @sut.Odejmowanie(-5,-9)
		
		/assert/
		actual.should eql 4
		end
	end
	
	describe "#mnozenie dodatnich argumentow" do
	
		it "Test mnozenia, gdy obie liczby sa dodatnie" do

		/act/
		actual = @sut.Mnozenie(3,2)
		
		/assert/
		actual.should eql 6
		end
	end
	
	describe "#mnozenie jednego argumentu ujemnego" do
	
		it "Test mnozenia, gdy jedna liczba jest ujemna, a druga dodatnia" do

		/act/
		actual = @sut.Mnozenie(-4,5)
		
		/assert/
		actual.should eql -20
		end
	end
	
	describe "#mnozenie dwoch ujemnych argumentow" do
	
		it "Test mnozenia, gdy obie liczby sa ujemne" do

		/act/
		actual = @sut.Mnozenie(-5,-10)
		
		/assert/
		actual.should eql 50
		end
	end
	
	describe "#dzielenie dodatnich argumentow" do
	
		it "Test dzielenia dwóch dodatnich liczb" do

		/act/
		actual = @sut.Dzielenie(8,4)
		
		/assert/
		actual.should eql 2
		end
	end
	
	describe "#dzielenie drugi argument to 0" do
	
		it "Test dzielenia, gdy druga liczba to 0" do
		
		/assert/
		expect {@sut.Dzielenie(9,0)}.to raise_error(ArgumentError)
		end
	end
	
	describe "#dzielenie jednego ujemnego argumentu" do
	
		it "Test dzielenia, gdy jedna liczba jest dodatnia, a druga ujemna" do

		/act/
		actual = @sut.Dzielenie(-10,2)
		
		/assert/
		actual.should eql -5
		end
	end
	
	describe "#dzielenie dwoch ujemnych argumentow" do
	
		it "Test dzielenia, gdy obie liczby sa ujemne" do

		/act/
		actual = @sut.Dzielenie(-12,-4)
		
		/assert/
		actual.should eql 3
		end
	end
	
	describe "#dzielenie gdy pierwszy argument to 0" do
	
		it "Test dzielenia, pierwsza liczba to 0" do

		/act/
		actual = @sut.Dzielenie(0,-4)
		
		/assert/
		actual.should eql 0
		end
	end
	
	describe "#dzielenie zmiennoprzecinkowych argumentow" do
	
		it "Test dzielenia, gdy liczby sa zmiennoprzecinkowe" do

		/act/
		actual = @sut.Dzielenie(3.0,2.0)
		
		/assert/
		expect(actual).to be_a_kind_of Float
		actual.should eql 1.5
		end
	end
	describe "#pierwiastkowanie" do
	
		it "Test pierwiastkowania" do

		/act/
		actual = @sut.Pierwiastkowanie(16)
		
		/assert/
		expect(actual).to be_a_kind_of Float
		actual.should eql 4.0
		end
	end
	describe "#pierwiastkowanie argument ujemny" do
	
		it "Test pierwiastkowania liczby ujemnej" do

		/assert/
		expect {@sut.Pierwiastkowanie(-1)}.to raise_error
		end
	end
	
end