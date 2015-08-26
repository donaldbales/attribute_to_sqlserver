class CreateAttributeReferences < ActiveRecord::Migration
  def change
    create_table :attribute_references do |t|

      t.timestamps null: false
    end
  end
end
