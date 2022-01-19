module SavingsAccount
  
  NEGATIVE_RATE = -3.213
  SMALL_POSITIVE_RATE = 0.5
  MEDIUM_POSITIVE_RATE = 1.621
  LARGE_POSITIVE_RATE = 2.475

  def self.interest_rate(balance)
    if balance < 0
      NEGATIVE_RATE
    elsif balance < 1000
      SMALL_POSITIVE_RATE
    elsif balance >= 1000 && balance < 5000
      MEDIUM_POSITIVE_RATE
    else
      LARGE_POSITIVE_RATE
    end
  end

  def self.annual_balance_update(balance)
    balance + balance * (self.interest_rate(balance) / 100).abs
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end
