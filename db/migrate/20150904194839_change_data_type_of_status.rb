class ChangeDataTypeOfStatus < ActiveRecord::Migration
  def self.up
    change_table :records do |t|
      t.change :status, :string
    end
  end
  def self.down
    change_table :records do |t|
      t.change :status, :boolean
    end
  end
end
