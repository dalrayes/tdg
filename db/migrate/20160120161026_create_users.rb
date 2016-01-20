class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :password_hash
      t.string :gender
      t.string :giftr_news
    end
  end
end
