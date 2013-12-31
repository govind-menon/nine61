class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |f|
      f.text :source_code
      f.text :test_code
      f.timestamps
    end
  end
end