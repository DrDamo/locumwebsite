class CreateSectionHeadings < ActiveRecord::Migration
  def change
    create_table :section_headings do |t|
      t.string :name
      t.integer :position
      t.text :desc

      t.timestamps
    end
  end
end
