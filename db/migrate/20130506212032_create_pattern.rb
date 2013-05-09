class CreatePattern < ActiveRecord::Migration
  def up
  	create_table :patterns do |t|
  	  t.string :name
  	  t.string :step1url
  	end
  end

  def down
  	drop_table :patterns
  end
end
