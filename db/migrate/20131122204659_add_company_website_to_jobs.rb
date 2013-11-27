class AddCompanyWebsiteToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :company_website, :string
  end
end
