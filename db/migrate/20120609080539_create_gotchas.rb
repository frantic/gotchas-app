class CreateGotchas < ActiveRecord::Migration
  def change
    create_table :gotchas do |t|
      t.text :content
      t.string :tags

      t.timestamps
    end
  end
end
