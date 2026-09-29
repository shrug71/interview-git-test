class Transaction < ApplicationRecord
  belongs_to :recharge

  validates :transaction_id, presence: true, uniqueness: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true
end
