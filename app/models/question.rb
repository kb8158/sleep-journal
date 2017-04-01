class Question < ApplicationRecord
  belongs_to :user

  validates :quality, presence: true, numericality: {greater_than: 0, less_than: 10}
  validates :coffee, presence: true
  validates :booze, presence: true
  validates :workout, presence: true
  validates :date, presence: true
  validates :comments, presence:true
end
