require "minitest/autorun"
require_relative "ISBN.rb"

class TestIsbn <Minitest::Test
	
	def zero_one_equal_one
		assert_equal(1, 1)
	end	

	def test_valid_ISBN_string
		assert_equal(true, ten("0-671-50093-7"))
	end

	def test_valid_ISBN_ten
		assert_equal(true, ten("0671500937"))
	end
	def test_valid_ISBN_thirteen
		assert_equal(true, ten("0671500937879"))
	end

	def test_valid_check_ten_X
		assert_equal("X", ck_ten("877195869X"))
	end

	def test_valid_check_ten_zero
		assert_equal("0", ck_ten("0-321-14653-0"))
	end
		
	

end
