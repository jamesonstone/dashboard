class CreateDashboardRecords < ActiveRecord::Migration
  def change
    create_table :dashboard_records do |t|
      t.string :project_name
      t.boolean :status
      t.string :comments
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
