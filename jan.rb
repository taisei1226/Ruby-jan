require "csv"

def janken
	puts "じゃんけん・・・"
	puts "0(グー)1(チョキ)2(パー)3(戦わない)"
	
	player_hand = gets.to_i
	if !(player_hand == 0 || player_hand == 1 || player_hand ==2)
		player_hand = 3
	end
	
	program_hand = rand(3)
	jankens = ["グー", "チョキ","パー","戦わない"]
	
	puts "ホイ！"
	puts "---------------"
	puts "あなた:#{jankens[player_hand]}を出しました"
	puts "相手:#{jankens[program_hand]}を出しました"
	puts"------------------------------"
	
	if player_hand ==3 || program_hand == 3
		puts"じゃんけんが放棄されました。ゲームを終了します。"
		exit
	else
		number = player_hand - program_hand
		case number
		when 0 then
			puts "あいこ・・・"
			return true
		when -1, 2 then
			puts"あっち向いて・・"
			@janken_judge = "win"

		when 1, -2 then
			puts "あっち向いて・・・"
			@janken_judge = "lose"

		end
	end

	puts "0(上)1(下)2(左)3(右)"
	
	player_number = gets.to_i
	program_number =rand(4)
	directions = ["上","下","左","右"]
	
	puts"ホイ！"
	puts "あなた：#{directions[player_number]} 相手：#{directions[program_number]}"
	puts"------------------------------"
	
	if @janken_judge == "win" && player_number == program_number
		puts "勝ちました"
		return false
	elsif @janken_judge == "lose" && player_number == program_number
		puts "負けました"
		return false
	else
	return true
	end
end


next_game = true

loop {
	next_game = janken
	if next_game = false
	break
end
}




