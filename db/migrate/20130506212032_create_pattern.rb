class CreatePattern < ActiveRecord::Migration
  def up
  	create_table :patterns do |t|
  	  t.string :name
  	  t.string :step1url
  	  t.string :step2url
  	  t.string :step3url
  	  t.string :step4url
  	  t.string :step5url
  	  t.string :step6url
  	  t.string :step7url
  	  t.string :step8url
  	  t.string :step9url
  	  t.string :original_url
  	  t.string :tanglepatterns_url
  	end
  end

  def down
  	drop_table :patterns
  end
end
