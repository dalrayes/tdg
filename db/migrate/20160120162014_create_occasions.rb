class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.references :recipient
      t.date :date
      t.string :occasion_type
      t.string :reminder

      t.timestamps
    end
  end
end
