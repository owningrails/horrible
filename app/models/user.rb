class User < ActiveRecord::Base
  belongs_to :account

  scope :oldest, -> { order("created_at") }
  scope :newest, -> { order("created_at desc") }

  validates :name, presence: true
  validates :email, format: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\z/i
end
