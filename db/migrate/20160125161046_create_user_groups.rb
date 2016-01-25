class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
    	t.integer :member_id
    	t.references :group
    	t.string :member_status
    	t.string :member_notication

    	t.timestamps
    end
  end
end
