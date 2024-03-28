json.extract! booking, :id, :client_name, :email, :phone, :appointment_date, :additional_information, :payment_type, :consultant_preference, :created_at, :updated_at
json.url booking_url(booking, format: :json)
