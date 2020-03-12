class AddUserIdToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :user_id, :integer
  end
end
