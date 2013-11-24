class AddRejectToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :Reject, :submit
  end
end
