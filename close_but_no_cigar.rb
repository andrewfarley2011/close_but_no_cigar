
def lottery(my_number, winners) 
	
	winning = [] 
    
	if winners.include?(my_number)
		# winners.include? checks the array winners to see if any of
		# the elements in that array match the variable (my_number) 
    
		winning << my_number
		# << moves my_number into the array winning
    
		puts "You Win!"

	else 
    	
    	puts "No match!" 
  
	end  
 
	p winning

end 
 
 
 
def close_but_no_cigar(my_number, winners) 
     
	close = [] 
   
    winners.each do |number| 
	# executes code for each element in the array winners 
	# assigns the variable name |number| to each element in that array
     
    	count = 0 
   		# initial counter 
    
    	index = 0 
    	# counter for index position 
      
    	n = number.length 
    	# returns the number of elements in each string in the array winners
 
    		n.times do 
    		# executes code for each number in the array winners 

        		if my_number[index] == number[index] 
        		# [index] looks at the index position of my_number and the
        		# index position of each element of the array winners
    
            		count = count + 1 
        
        		end 
    
        	index = index + 1 
        	# moves to the next index position 
    
    		end 
    
    	if count == number.length - 1 
    	# counter for close 
   
    		close << number 
    		# << moves number into the empty array close
 
		end 
 		
 	end 
   
	puts "Close, but no cigar." 
	
	p close 

end 
