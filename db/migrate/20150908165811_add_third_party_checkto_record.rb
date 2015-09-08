class AddThirdPartyChecktoRecord < ActiveRecord::Migration
  def self.up
    add_column :records, :third_party, :boolean
  end
  def self.down
    remove_column :records, :third_party
  end
end
