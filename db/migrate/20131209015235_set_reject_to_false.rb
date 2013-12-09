class SetRejectToFalse < ActiveRecord::Migration
  def change
    #remove and add a new column to change a column:
    remove_column :jobs, :reject
    add_column :jobs, :reject, :boolean, :default => false
  end
end
