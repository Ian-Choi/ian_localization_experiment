class CreateTestData < ActiveRecord::Migration
  def self.up
    create_table :test_data do |t|
      t.string :content
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :test_data
  end
end
