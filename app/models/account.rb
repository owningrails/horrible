class Account < ActiveRecord::Base
  has_many :users

  include TimestampScopes

  validates :domain, presence: true

  validates :billing_email, email: true
end
