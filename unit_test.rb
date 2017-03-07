require 'test/unit'
require File.expand_path('../Hiyositiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase

	def setup

	end

	def test_rd_epoch

		# test that Epoch's rd == 0.

		assert_equal(0, Hiyositiyau::EPOCH.rd)
	end


end
