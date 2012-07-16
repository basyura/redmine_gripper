
class AddFieldsGripes < ActiveRecord::Migration
  def self.up
    add_column :gripes, :created_on, :datetime
  end

  def self.down
    remove_column :gripes, :created_on
  end
end
