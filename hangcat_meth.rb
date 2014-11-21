
guesses=[]
@result=[]
@letterplace=[]
puts "welcome to Devil Cat"
def cat_draw(body_part)
  
if body_part==0
puts" guess the tropical fruit by letter but if the cat fully shows up then you lose."
elsif body_part==1
    puts"     |\\___/|"
  elsif body_part==2
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
  elsif body_part==3
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
  elsif body_part==4
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
  elsif body_part==5
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
  elsif body_part==6
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
    puts"     |     |"
  elsif body_part==7
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
    puts"     |     |"
    puts"    /| | | |\\ "
  elsif body_part==7
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
    puts"     |     |"
    puts"    /| | | |\\ "
    puts"    \| | |_|/\\ "
  elsif body_part==8
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
    puts"     |     |"
    puts"    /| | | |\\ "
    puts"    \\| | |_|/\\ "
    puts"    //_// ___/ "
  elsif body_part==9
    puts"     |\\___/|"
    puts"    =) ^Y^ (="
    puts"     \\  ^  /"
    puts"      )=*=("
    puts"     /     \\ "
    puts"     |     |"
    puts"    /| | | |\\ "
    puts"    \\| | |_|/\\ "
    puts"    //_// ___/  "
    puts"        \\_) "
    puts"     YOU LOSE"
  end
end
cat_draw(0)

# define a method check_letter
def check_letter(word, guess)
@c=word.include?(guess)
0.upto(word.size - 1) do |b|
	if guess.include?(word[b,1]) then
		@result.push(b+1) 
	end
end
end

def display_results (word, guesses)
        0.upto (word.size) do |n|

                if guesses.include?(word[n,1]) then
                        @result[n]= word[n,1]

                if @result[n] != ""
                        then @result[n]= word[n,1]
                else @result[n]="_"
                end
        end

end
end

f=File.new("tropical fruit.txt")
word1=f.readlines.sample
fullword=word1
0.upto (fullword.size-2)do |b|
	@result[b]="_"
	print @result[b]+" "
	end
guessing=[]
counter=0
correct=0
while counter<8
	print "\n"+"what letter do you guess?"
	guess1=gets.chomp.downcase
	puts""
	guessing[counter]=(guess1)
	check_letter(word1,guess1)
	if @c==true
		cat_draw(counter)
		display_results(fullword,guess1)
		0.upto (fullword.size-2) do |b|
			print @result[b]
		end
	correct=correct+1
	if correct>fullword.size-1
		break
	end
	
	elsif @c==false
		counter=counter+1
		cat_draw(counter)
		0.upto(fullword.size) do |b|
			print @result[b]
		end
		correct=correct+1
		if correct>=fullword.size-1
			break
		end
		elsif @a==false
			counter=counter+1
			cat_draw(counter)
			0.upto(wordstring.size-2) do |b|
					print@result[b]+ " "
		end
	end
end
puts"your fruit was "+ word1

# check_letter(word, letter) => true or false
# try include?

# define a method display_result

# display_result(word, guesses) => string of underscores and letters
# create an empty array called result
# turn the word in an array of the letters
# iterate through each letter in the letters array (word)

# if the letter is in the guesses array (hint: use include?)
# add the letter to result
# otherwise add an underscore to result
# return the result joined together

# MAIN PROGRAM
# fetch a word for the user to guess

# loop
# display the cat to the user (use draw_cat)
# display the results to the user (use display_result)
# ask the user to guess a letter and add it to your guesses array
# if the guess is bad increase the cat body_parts (use check_letter)
# if the word is good end
# if the cat is fully displayed end
# end
