module TimestampScopes
  extend ActiveSupport::Concern

  included do
    scope :oldest, -> { order("created_at") }
    scope :newest, -> { order("created_at desc") }
  end
end