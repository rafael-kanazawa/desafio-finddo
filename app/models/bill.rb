class Bill < ApplicationRecord
    has_many :orders, dependent: :destroy
    belongs_to :table

    validates :bill_status, numericality: {only_integer: true}, presence: true, inclusion: { in: [0, 1]}
    validates :amount, numericality: true, presence: true
    validates :table_id, :table_number, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
