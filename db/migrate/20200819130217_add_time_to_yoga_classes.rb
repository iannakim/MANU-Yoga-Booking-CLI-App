class AddTimeToYogaClasses < ActiveRecord::Migration[5.2]
  def change
    add_column(:yoga_classes, :time, :string)
  end
end
