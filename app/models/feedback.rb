class Feedback
  include ActiveModel::Model

  attr_accessor :from, :comment

  validates :from, :comment, presence: true
  validates :from, email: true
end