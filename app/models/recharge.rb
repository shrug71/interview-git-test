class Recharge < ApplicationRecord
  validates :mobile_no, presence: true
  validates :operator_name, presence: true, inclusion: { in: %w[Jio Airtel Vi] }
  validates :state, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: %w[pending success failed] }

  private
  
end