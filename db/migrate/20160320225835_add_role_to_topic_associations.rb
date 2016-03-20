class AddRoleToTopicAssociations < ActiveRecord::Migration
  def change
    add_column :topic_associations, :role, :integer
  end
end
