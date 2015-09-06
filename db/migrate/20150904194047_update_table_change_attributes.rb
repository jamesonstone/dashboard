class UpdateTableChangeAttributes < ActiveRecord::Migration
  def change
    add_column :records, :color, :string
    change_column :records, :status, :string
  end
  # def self.up
  #   change_column :records, :status, :string
  # end
  # def self.down
  #   change_column :records, :status, :boolean
  # end
end
