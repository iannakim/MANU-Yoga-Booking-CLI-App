class CreateReservations < ActiveRecord::Migration[5.2]

  def change
    create_table :reservations do |t|
      t.integer :student_id
      t.integer :yoga_class_id
      t.string :time
    end
  end

end



