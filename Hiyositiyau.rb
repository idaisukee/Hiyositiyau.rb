# -*- coding: utf-8 -*-

require 'date'

class Hiyositiyau < DateTime

	EPOCH = self.new(1792, 9, 22, 0, 0, 0, Rational(1, 24))

	JST = Rational(9, 24)

	def rd
		self.ajd - EPOCH.ajd
	end

end

		
