=begin
Figure out a data structure to contain the "deck" and the "player's cards" and "dealer's cards". 
Maybe a hash? An array? A nested array? Your decision will have consequences throughout your code, 
but don't be afraid of choosing the wrong one. 
Play around with an idea, and see how far you can push it. If it doesn't work, back out of it.

  
=end

CARD_VALUES = {"2": 2, "3": 3, "4": 4, "5", 5, "6": 6, "7": 7, "8": 8, "9": 9, "10": 10
                "J": 10, "Q": 10, "K": 10, "A": 11}

deck = [["H", "2"], ["H", "3"], ["H", "4"], ["H", "5"], ["H", "6"], 
      ["H", "7"], ["H", "8"], ["H", "9"], ["H", "10"], ["H", "J"], ["H", "Q"], 
        ["H", "K"], ["H", "A"], ["S", "2"], ["S", "3"], ["S", "4"], ["S", "5"], 
        ["S", "6"], ["S", "7"], ["S", "8"], ["S", "9"], ["S", "10"], ["S", "J"], 
        ["S", "Q"], ["S", "K"], ["S", "A"], ["D", "2"], ["D", "3"], ["D", "4"], 
        ["D", "5"], ["D", "6"], ["D", "7"], ["D", "8"], ["D", "9"], ["D", "10"], 
        ["D", "J"], ["D", "Q"], ["D", "K"], ["D", "A"], ["C", "2"], ["C", "3"], 
        ["C", "4"], ["C", "5"], ["C", "6"], ["C", "7"], ["C", "8"], ["C", "9"], 
        ["C", "10"], ["C", "J"], ["C", "Q"], ["C", "K"], ["C", "A"]]




def calc_total(cards)

  score = 0
  cards.each do |arr|
    score += CARD_VALUES[arr[0]]
  end

  aces = hand.select{|arr| arr[1] == 'A'}

  aces.count.times do
    score -= 10 if score > 21
  end

  score
end