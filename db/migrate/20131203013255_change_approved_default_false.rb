class ChangeApprovedDefaultFalse < ActiveRecord::Migration
  def change
    change_column :jobs, :approve, :boolean, :default => false
  end
end
