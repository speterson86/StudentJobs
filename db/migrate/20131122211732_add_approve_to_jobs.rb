class AddApproveToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :approve, :boolean
  end
end
