class CreateCvsections < ActiveRecord::Migration
  def change
    create_table :cvsections do |t|
      t.string :title
      t.integer :location
      t.text :content

      t.timestamps
    end
  end
end
