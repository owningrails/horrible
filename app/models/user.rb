class User < ActiveRecord::Base
  belongs_to :account

  include TimestampScopes

  validates :name, presence: true
  validates :email, email: true
end
