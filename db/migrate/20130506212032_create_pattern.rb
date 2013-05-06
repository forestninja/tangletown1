class CreatePattern < ActiveRecord::Migration
  def up
  	create_table :patterns do |t|
  	  t.string :name
  	end
  end

  def down
  	drop_table :patterns
  end
end
