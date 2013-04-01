class CreateSectionheadings < ActiveRecord::Migration
  def change
    create_table :sectionheadings do |t|
      t.string :name
      t.integer :position
      t.text :desc

      t.timestamps
    end
  end
end
