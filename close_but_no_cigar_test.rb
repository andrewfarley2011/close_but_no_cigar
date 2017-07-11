
require "minitest/autorun"

require_relative "mm_kata_array.rb"

class Mined_Minds_Kata < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_counter
		assert_equal(100,array.count)
		assert_equal(Array,array.class)
	end

# The array[x] is indicative of the index position, which is one less than the value because the index is 0 based.

	def test_1_returns_1
		assert_equal(1,array[0])
	end

	def test_2_returns_2
		assert_equal(2,array[1]) 
	end

	def test_3_returns_mined
		assert_equal("mined",array[2])
	end

	def test_6_returns_mined
		assert_equal("mined",array[5])
	end

	def test_5_returns_minds
		assert_equal("minds",array[4])
	end

	def test_10_returns_minds
		assert_equal("minds",array[9])
	end

	def test_15_returns_mined_minds
		assert_equal("mined minds",array[14])
	end

	def test_30_returns_mined_minds
		assert_equal("mined minds",array[29])
	end

end
