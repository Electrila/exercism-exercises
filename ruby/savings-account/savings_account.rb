module SavingsAccount
  
  NEG_BALANCE = -3.213
  BALANCE_BTW_0_AND_1000 = 0.5
  BALANCE_BTW_1001_AND_4999 = 1.621
  BALANCE_5000_PLUS = 2.475

  def self.interest_rate(balance)
    if balance < 0
      NEG_BALANCE;
    elsif balance < 1000
      BALANCE_BTW_0_AND_1000;
    elsif balance >= 1000 && balance < 5000
      BALANCE_BTW_1001_AND_4999;
    else
      BALANCE_5000_PLUS;
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
