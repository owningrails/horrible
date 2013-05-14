class Feedback
  include ActiveModel::Model

  attr_accessor :from, :comment

  # validates :from, format: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\z/i
  validates :from, email: true
  validates :comment, presence: true
end