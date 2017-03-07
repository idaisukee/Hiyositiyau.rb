require 'test/unit'
require File.expand_path('../Hiyositiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase

	def setup

	end

	def test_rd_epoch

		# test that Epoch's rd == 0.

		assert_equal(0, Hiyositiyau::EPOCH.rd)
	end

	def test_rd_is_independent_from_time_offest
		(0...100).each do |i|
			assert_equal(Hiyositiyau::EPOCH.rd, Hiyositiyau::EPOCH.new_offset(i / 100.0).rd)
		end
	end

	def test_rd_is_correct_for_adding
		(-100_000..100_000).each do |i|
			assert_equal((Hiyositiyau::EPOCH + i).rd, Hiyositiyau::EPOCH.rd + i)
		end
	end

	def test_from_ajd_by_reflection
		(-100_000..100_000).each do |i|
			assert_equal(Hiyositiyau::from_ajd(i).ajd, i)
		end
	end

	def test_from_rd_at_epoch
		assert_equal(Hiyositiyau::from_rd(0), Hiyositiyau::EPOCH)
	end

	def test_from_rd_is_correct_for_adding
		(-100_000..100_000).each do |i|
			assert_equal(Hiyositiyau::from_rd(i), Hiyositiyau::EPOCH + i)
		end
	end

end
