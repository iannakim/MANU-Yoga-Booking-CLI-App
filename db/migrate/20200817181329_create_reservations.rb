class CreateReservations < ActiveRecord::Migration[5.2]

  def change
    create_table :reservations do |t|
      t.integer :student_id
      t.integer :yogaclass_id
      t.string :time
    end
  end

end



