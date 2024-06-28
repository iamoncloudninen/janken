require "csv"

puts "じゃんけん..."
def janken_method
    puts "0(グー),1(チョキ),2(パー)"
    my_hand = gets.to_i
    his_hand = rand(3)
    janken = ["グー","チョキ","パー"]
    puts "ぽい！"
    puts "--------------"
    puts "あなた:#{janken[my_hand]}を出しました"
    puts "相手:#{janken[his_hand]}を出しました"

    if (my_hand == 0 && his_hand == 1)||
        (my_hand == 1 && his_hand == 2)||
        (my_hand == 2 && his_hand == 0)
        puts "勝ちました！"
        puts "--------------"
        return "you_win"
    elsif (my_hand == his_hand)
        puts "あいこです！もう一度！"
        puts "--------------"
        puts "あいこで..."
        return "draw"
    else 
        puts "負けました。"
        puts "--------------"
        return "you_lose"
    end
end

def atti_method
    puts "あっち向いて..."
    puts "0(上↑), 1(下↓), 2(右→), 3(左←)"
    my_face = gets.to_i
    his_finger = rand(4)
    direction = ["上", "下", "右", "左"]
    puts "ほい！"
    puts "------------"
    puts "あなた:#{direction[my_face]}"
    puts "相手:#{direction[his_finger]}"
    puts "------------"
    return my_face, his_finger
end

loop do
    janken_result = janken_method
    if janken_result == "draw"
        next
    end

    my_face, his_finger = atti_method

    if (janken_result == "you_win") && (my_face == his_finger)
        puts "あなたの勝ちです！"
        puts "おめでとう！！！"
        break
    elsif (janken_result == "you_lose") && (my_face == his_finger)
        puts "あなたの負けです！"
        puts "残念でした！"
        break
    else
        puts "もう一度！"
    end
end