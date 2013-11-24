class AddRejectDescriptionToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :reject_description, :text_area
  end
end
