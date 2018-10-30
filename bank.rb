# transfer_fee method
# @input to 'bank name'
# @input from 'bank name'
# @input amount (number)
# @return fee (number, nil if error)
def transfer_fee(to, from, amount)
  nil unless valid_amount?(amount)
  return 0 if same_bank?(to, from) || amount <= 5000
  return 1 if amount <= 10_000
  return 2 if amount <= 15_000

  3
end

def valid_amount?(amount)
  amount < 0 || amount > 20_000 || amount.is_a?(Float) ? false : true
end

def same_bank?(to, from)
  to == from
end
