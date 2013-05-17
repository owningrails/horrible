class EmailValidator < ActiveModel::EachValidator
  REGEXP = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\z/i
  
  def validate_each(record, attribute, value)
    record.errors.add attribute, :invalid unless value.to_s =~ REGEXP
  end
end