=begin
	This is a simple ruby implementation of the ceasar cipher
	text: the original, unciphered text
	shiftn: the number of characters we will shift
=end
def cipher (text, shiftn)
	cyphered_bytes = [] # an array of
	lower_range = (("a".ord)..("z".ord)).sort
	upper_range = (("A".ord)..("Z".ord)).sort
	text.bytes.each do |i|
		if lower_range.include? i
			shifted_sum = ((i + shiftn) % 122 + 96)
			while (shifted_sum>122)
				shifted_sum = shifted_sum % 122 + 96
			end
			cyphered_bytes << shifted_sum.chr
		elsif upper_range.include? i
			shifted_sum = ((i + shiftn) % 90 + 64)
			while (shifted_sum>90)
				shifted_sum = shifted_sum % 90 + 64
			end
			cyphered_bytes << shifted_sum.chr
		else
			cyphered_bytes << (i).chr
		end
	end
	cyphered_bytes.join
end

puts cipher "What a string!",27