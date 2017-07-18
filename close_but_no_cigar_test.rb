
require "minitest/autorun" 
require_relative "close_but_no_cigar.rb" 
class Close_But_No_Cigar < Minitest::Test  

	def test_empty 
		# there is no winner in this instance
		my_number = "1028" 
 		winners = [] 
 		assert_equal([], lottery(my_number, winners)) 
	end 
 							 
	def test_win				 
 		my_number = "1028" 
 		winners = ["1028", "3978", "4344", "6733"] 
 		assert_equal(["1028"], lottery(my_number, winners)) 
 	end	  
  						  
 	def test_off_by_one        
 	 	my_number = "1028" 
 	 	winners = ["1020", "3978", "4344", "6733"] 
 		assert_equal(["1020"], close_but_no_cigar(my_number, winners)) 
 	end	 
    
    def test_for_array_containing_winner 
    	my_number = "12345" 
    	winners = ["12340", "10111", "21314", "15161"] 
 		assert_equal(["12340"], close_but_no_cigar(my_number,winners)) 
	end 

    def test_for_longer_numbers 
  		my_number = "1234567" 
     	winners = ["1234560", "8910111", "6171819", "2021222"] 
     	assert_equal(["1234560"], close_but_no_cigar(my_number, winners)) 
    end 

end 
