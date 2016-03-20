class AddEmailAndRoleToStakeholder < ActiveRecord::Migration
  def change
    add_column :stakeholders, :email, :string
    add_column :stakeholders, :role, :string
  end
end
