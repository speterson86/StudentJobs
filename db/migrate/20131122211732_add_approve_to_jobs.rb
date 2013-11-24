class AddApproveToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :Approve, :submit
  end
end
