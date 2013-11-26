class AddRejectToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :reject, :boolean
  end
end
