class CreateGripes < ActiveRecord::Migration
  def change
    create_table :gripes do |t|
      t.integer :user_id
      t.string  :text
    end
  end
end
