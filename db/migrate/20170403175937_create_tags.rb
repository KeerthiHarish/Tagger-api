class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :entity_type
      t.text :tags

      t.timestamps
    end
  end
end
