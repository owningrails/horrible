class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :domain
      t.string :billing_email

      t.timestamps
    end
  end
end
