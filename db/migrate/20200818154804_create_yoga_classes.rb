class CreateYogaClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :yoga_classes do |t|
      t.string :name
      t.string :location
      t.integer :instructor_id
    end
  end
end
