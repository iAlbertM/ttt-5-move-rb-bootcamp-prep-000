def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " # top
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " # mid
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " # btm
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(arr, indx, player="X")
  player = (player == "X" ? "X" : "O")
	# puts "CHECKPOINT 1\narr: #{arr},\nindx: #{indx}\nplayer: #{player}"
	if arr[indx] == ""
	  arr[index, 1]
		arr.insert(indx, player)
		puts arr # check if arr was updated
		else
 		puts "Oops! Space is taken. Try another one"
    input = gets.strip
    indx = input_to_index(input)
	end

	if indx == 0 or indx == 1
    	indx = 0
	end
	if indx >= arr.length
    	indx = 8
  	end
	# puts " CHECKPOINT 2:\narr: #{arr},\nindx: #{indx},\nplayer: #{player}"
end