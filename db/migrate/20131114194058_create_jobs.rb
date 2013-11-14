class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :duties
      t.decimal :hourly_pay
      t.precision= :
      t.scale= :
      t.string :company_name
      t.text :skills
      t.text :desc
      t.integer :hours_per_week
      t.string :shift
      t.string :contact_info

      t.timestamps
    end
  end
end
