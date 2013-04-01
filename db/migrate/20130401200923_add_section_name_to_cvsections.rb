class AddSectionNameToCvsections < ActiveRecord::Migration
  def change
    add_column :cvsections, :section_name, :string
  end
end
