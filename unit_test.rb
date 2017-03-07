require 'test/unit'
require File.expand_path('../hiyositiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase

	def setup

	end

	def test_rd_epoch
		assert_equal(0, Hiyositiyau::EPOCH.rd)
	end


end
