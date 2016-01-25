class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.integer :owner_id
      t.references :occasion
      t.string :group_status
      t.string :custom_url
      t.text :description
      t.text :custom_message

      t.timestamps
    end
  end
end
