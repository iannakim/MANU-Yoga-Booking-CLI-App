class RemoveTimeFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column(:reservations, :time)
  end
end
