
# |value,index| these can only be called within the method that the .each_with_index is being used with.
# array[index] must be used within the function that the array was created and defined in.
# |first,second| after the .each_with_index, first is always value, and second is always index position.

def array()
	array = [*1..100]
		array.each_with_index do |value,index|
		if value % 15 == 0
			array[index] = "mined minds"
			puts array[index]
		elsif value % 3 == 0
			array[index] = "mined"
			puts array[index]
		elsif value % 5 == 0
			array[index] = "minds"
			puts array[index]
		else
			puts "#{value}"
		end
	end	
end

array
