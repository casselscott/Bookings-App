class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :client_name
      t.string :email
      t.string :phone
      t.timestamp :appointment_date
      t.string :additional_information
      t.string :payment_type
      t.string :consultant_preference

      t.timestamps
    end
  end
end
