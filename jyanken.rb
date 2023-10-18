loop do
  loop do
    puts "じゃんけん…"
    puts "0（グー）1（チョキ）2（パー）3（戦わない）"
    $my_hand = gets.to_i
    puts "ホイ！"
    puts "---------------"

    case $my_hand
    when 0
      $my_hand = "グー"
      puts "あなた：グーを出しました"
    when 1
      $my_hand = "チョキ"
      puts "あなた：チョキを出しました"
    when 2
      $my_hand = "パー"
      puts "あなた：パーを出しました"
    when 3
      puts "戦わないのですか？"
      puts "---------------"
    else
      puts "0,1,2,3のいずれかを入力して下さい"
      puts "---------------"
    end

    if $my_hand == "グー" || $my_hand == "チョキ" || $my_hand == "パー"
    opponent_hand = ["グー","チョキ","パー"]
    $opponent_hand_result = opponent_hand[rand(3)]
    puts "相手：#{$opponent_hand_result}を出しました"
    puts "---------------"
    end
  
    if $my_hand == $opponent_hand_result
      puts "あいこなのでもう一度！"
    else
      break
    end  
  end

  loop do
    puts "あっち向いて〜"
    puts "0（上）1（下）2（左）3（右）"
    $my_face = gets.to_i
    puts "ホイ！"
    puts "---------------"

    case $my_face
    when 0
      $my_face = "上"
      puts "あなた：上"
    when 1
      $my_face = "下"
      puts "あなた：下"
    when 2
      $my_face = "左"
      puts "あなた：左"
    when 3
      $my_face = "右"
      puts "あなた：右"
    else
      puts "0,1,2,3のいずれかを入力して下さい"
      puts "---------------"
    end
  
    if $my_face == "上" || $my_face == "下" || $my_face == "左" || $my_face == "右"
    opponent_face = ["上","下","左","右"]  
    $opponent_face_result = opponent_face[rand(4)]
    puts "相手：#{$opponent_face_result}"
    puts "---------------"
      break
    end
  end

  if $my_hand == "グー" && $opponent_hand_result == "チョキ" && $my_face == $opponent_face_result
    puts "あなたの勝ち！"
      break
  end

  if $my_hand == "チョキ" && $opponent_hand_result == "パー" && $my_face == $opponent_face_result
    puts "あなたの勝ち！"
      break
  end

  if $my_hand == "パー" && $opponent_hand_result == "グー" && $my_face == $opponent_face_result
    puts "あなたの勝ち！"
      break
  end

  if $my_hand == "グー" && $opponent_hand_result == "パー" && $my_face == $opponent_face_result
    puts "あなたの負け！"
      break
  end

  if $my_hand == "パー" && $opponent_hand_result == "チョキ" && $my_face == $opponent_face_result
    puts "あなたの負け！"
      break
  end

  if $my_hand == "チョキ" && $opponent_hand_result == "グー" && $my_face == $opponent_face_result
    puts "あなたの負け！"
      break
  end
end