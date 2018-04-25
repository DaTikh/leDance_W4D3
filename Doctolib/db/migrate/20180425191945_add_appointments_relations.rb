class AddAppointmentsRelations < ActiveRecord::Migration[5.2]
  def change
    change_table :appointments do |t|
    t.belongs_to :doctor, index: true, optional: true
    t.belongs_to :patient, index: true, optional: true
  end
  end
end
