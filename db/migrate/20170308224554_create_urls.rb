class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |t|
			t.string :long_url
			t.string :short_url
			t.timestamps
		end
	end
end

class AddCounter < ActiveRecord::Migration
	def up
		add_column :urls,:counter,:integer,default:0
	end

	def down
		remove_column :urls,:counter
	end
end
