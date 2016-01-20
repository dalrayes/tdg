class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
    	t.integer :giver_id
      t.string :name
      t.integer :age
      t.string :gender
      t.string :relationship

      t.timestamps
    end
  end
end
