class Account < ActiveRecord::Base
  has_many :users

  scope :oldest, -> { order("created_at") }
  scope :newest, -> { order("created_at desc") }

  validates :domain, presence: true

  validates :billing_email, format: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\z/i
end
