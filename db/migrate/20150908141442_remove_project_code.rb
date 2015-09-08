class RemoveProjectCode < ActiveRecord::Migration
  def self.up
    remove_column :records, :project_code
  end
  def self.down
    add_column :records, :project_code, :integer
  end
end