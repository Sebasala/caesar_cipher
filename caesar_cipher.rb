def replace_letter(letter, number)
	letters = ("A".."Z").to_a
	if letters.include?(letter.upcase)
		index = letters.index(letter.upcase)
		index = (index + number) % 26
		if letters.include?(letter)
			return letters[index]
		else
			return letters[index].downcase
		end
	else
		return letter 
	end
end

def caesar_cipher(string, number)
	for i in 0..(string.length - 1)
		string[i] = replace_letter(string[i], number)
	end
	string
end