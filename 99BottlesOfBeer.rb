#encoding: utf-8
#99 bottles of beer in the wall

class Song
	def initialize(number_of_bottles)
		@bottles = number_of_bottles
	end
	
	def single_verse
		if @bottles > 0
			@out = actual_bottles(@bottles) + " on the wall, " + actual_bottles(@bottles) + ". \n"
		else
			@out = "No more bottles of beer on the wall, no more bottles of beer. \n"
		end
		
		if @bottles > 1
			@out += "Take one down, pass it around, " + actual_bottles(@bottles - 1) + " on the wall. \n\n"
		elsif @bottles == 1
			@out += "Take one down, pass it around, no more bottles of beer on the wall. \n\n"
		else
			@out += "Go to the store and buy some more, 99 bottles of beer on the wall."
		end
		return @out
	end
	
	def complete_song
		@out = ""
		while @bottles >= 0 do
			@out += single_verse()
			@bottles -= 1
		end
		return @out
	end
	
	
	def actual_bottles(number)
		@count = (number > 1) ? "bottles" : "bottle"
		"#{number} #{@count} of beer"
	end

end #class Song

song = Song.new(99)
puts song.complete_song()
