class AddProjectCodeToRecord < ActiveRecord::Migration
  def change
    add_column :records, :project_code, :integer
  end
end
