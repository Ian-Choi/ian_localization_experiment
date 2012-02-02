class TranslatesTestData < ActiveRecord::Migration
  def self.up
    TestDatum.create_translation_table!({
      :content => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    TestDatum.drop_translation_table! :migrate_data => true
  end
end