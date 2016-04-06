require "pry"

class PasswordChecker
	def initialize 
	end
	def check_password(email,password)
		name_site = email.split("@")
		name = name_site[0]
		site = name_site[1].split(".")[0]
		if password.length <= 7
			return false
		else 
			 if (password.include? name) || (password.include? site)
				return false
			else 
				i=0

				low_let = false
				up_let = false
				num = false
				sym = false
				while i < password.length
					char_num = password[i].ord
					if (char_num >= 97) && (char_num <= 122)
						low_let = true
					elsif (char_num >= 65) && (char_num <= 90)
						up_let = true
					elsif (char_num >= 48) && (char_num <= 57)
						num = true
					else 
						sym = true
					end

					i+=1
				end

				if (low_let == true) && (up_let == true) && (num == true) && (sym ==true)
					true
				else
					false
				end
			end
		end

	end

end
