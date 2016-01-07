class RemoveStateFromContact < ActiveRecord::Migration

  def change
    remove_column :contacts, :state
  end

end
