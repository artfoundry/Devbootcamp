class CreditCard
  def initialize(card)
    @cardstr = card.to_s
    raise ArgumentError.new("Not a valid credit card!") if @cardstr.length != 16
  end

  def check_card
    sum = 0
    card_arr = []
    card_arr.concat(@cardstr.split(//))
    card_arr.each_index {|x| card_arr[x].to_i}
    card_arr.map do |x| #separate number sequence into array of digit strings
      if x % 2 == 0               #if every other digit
        card_arr[x] *= 2          #double it
        card_arr[x].to_s.split(//) if card_arr[x] > 9       #if digit becomes double digit, separate digits
        card_arr.flatten
      end #if
    end #.map do
    card_arr.each_index {|x| sum += card_arr[x].to_i}  #add single digits
    sum % 10                      #return true if mult. of 10
  end #def check_card
end

cc = CreditCard.new(1234567812345678)

cc.check_card