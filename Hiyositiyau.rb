# -*- coding: utf-8 -*-

require 'bundler/setup'
Bundler.require

p Otohatiyau::otohatiyau(500, [7, 5, 3])

require 'date'

class Hiyositiyau < DateTime

	EPOCH = self.new(1792, 9, 22, 0, 0, 0, Rational(1, 24))
	JST = Rational(9, 24)

	Y = 365

	# 4 years
	A = 4 * Y + 1

	# 100 years
	B = 25 * A - 1

	# 400 years
	C = 4 * B + 1

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

	def self::from_ordinal(year, yday)

		otohatiyau = Otohatiyau::otohatiyau(year, [400, 100, 4])
		c = otohatiyau[0][0]
		b = otohatiyau[0][1]
		a = otohatiyau[0][2]
		y = otohatiyau[1][2]
		days = C * c + B * b + A * a + Y * y
		sum = days + yday
	end


end
