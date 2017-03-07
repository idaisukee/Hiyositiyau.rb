# -*- coding: utf-8 -*-

require 'date'

class Hiyositiyau < DateTime

	EPOCH = self.new(1792, 9, 22, 0, 0, 0, Rational(1, 24))

	JST = Rational(9, 24)

	def self::from_ajd(ajd)
		@ajd = ajd
		@jd = @ajd + Rational(1, 2)
		self.jd(@jd)
	end


	def self::from_rd(rd)
		@rd = rd
		@ajd = self::EPOCH.ajd + @rd
		self::from_ajd(@ajd)
	end



	def rd
		self.ajd - EPOCH.ajd
	end

end

		
