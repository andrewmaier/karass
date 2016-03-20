class CreateTopicAssociations < ActiveRecord::Migration
  def change
    create_table :topic_associations do |t|
      t.integer :stakeholder_id
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
