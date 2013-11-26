class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :duties
      t.decimal :hourly_pay, :precision => 4, :scale => 2, :default => 0.00
      t.string :company_name
      t.text :skills
      t.text :desc
      t.integer :hours_per_week
      t.string :shift
      t.timestamps
    end
  end
end
