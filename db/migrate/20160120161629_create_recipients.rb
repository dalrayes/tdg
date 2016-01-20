class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :relationship
    end
  end
end
