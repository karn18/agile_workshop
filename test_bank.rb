require './test_helper'
require './bank'

class TestMeme < Minitest::Test
  def test_when_transfer_with_different_bank_and_amount_is_1_should_pay_fee_0
    from = 'kbank'
    to = 'scb'
    amount = 1
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_500_should_pay_fee_0
    from = 'kbank'
    to = 'scb'
    amount = 500
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_4999_should_pay_fee_0
    from = 'kbank'
    to = 'scb'
    amount = 4999
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_5000_should_pay_fee_0
    from = 'kbank'
    to = 'scb'
    amount = 5000
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_5001_should_pay_fee_1
    from = 'kbank'
    to = 'scb'
    amount = 5001
    expected_fee = 1
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_9999_should_pay_fee_1
    from = 'kbank'
    to = 'scb'
    amount = 9999
    expected_fee = 1
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_10000_should_pay_fee_1
    from = 'kbank'
    to = 'scb'
    amount = 10_000
    expected_fee = 1
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_10001_should_pay_fee_2
    from = 'kbank'
    to = 'scb'
    amount = 10_001
    expected_fee = 2
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_14999_should_pay_fee_2
    from = 'kbank'
    to = 'scb'
    amount = 14_999
    expected_fee = 2
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_15000_should_pay_fee_2
    from = 'kbank'
    to = 'scb'
    amount = 15_000
    expected_fee = 2
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_15001_should_pay_fee_3
    from = 'kbank'
    to = 'scb'
    amount = 15_001
    expected_fee = 3
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_19999_should_pay_fee_3
    from = 'kbank'
    to = 'scb'
    amount = 19_999
    expected_fee = 3
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_different_bank_and_amount_is_20000_should_pay_fee_3
    from = 'kbank'
    to = 'scb'
    amount = 20_000
    expected_fee = 3
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_same_bank_and_amount_is_5000_should_pay_fee_0
    from = 'kbank'
    to = 'kbank'
    amount = 5000
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_same_bank_and_amount_is_10000_should_pay_fee_0
    from = 'kbank'
    to = 'kbank'
    amount = 10_000
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_same_bank_and_amount_is_15000_should_pay_fee_0
    from = 'kbank'
    to = 'kbank'
    amount = 15_000
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_same_bank_and_amount_is_20000_should_pay_fee_0
    from = 'kbank'
    to = 'kbank'
    amount = 20_000
    expected_fee = 0
    assert_equal expected_fee, transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_amount_less_than_0
    from = 'kbank'
    to = 'kbank'
    amount = -1
    assert transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_amount_0
    from = 'kbank'
    to = 'kbank'
    amount = 0
    assert transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_amount_is_not_integer
    from = 'kbank'
    to = 'kbank'
    amount = 2000.1
    assert transfer_fee(from, to, amount)
  end

  def test_when_transfer_with_amount_is_not_integer_2
    from = 'kbank'
    to = 'kbank'
    amount = 1000.5
    assert transfer_fee(from, to, amount)
  end
end
