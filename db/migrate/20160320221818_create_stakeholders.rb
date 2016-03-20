class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
