class SetApproveToFalse < ActiveRecord::Migration
  def change
    #remove and add a new column to change a column:
    remove_column :jobs, :approve
    add_column :jobs, :approve, :boolean, :default => false
  end
end
