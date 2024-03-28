require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Additional information", with: @booking.additional_information
    fill_in "Appointment date", with: @booking.appointment_date
    fill_in "Client name", with: @booking.client_name
    fill_in "Consultant preference", with: @booking.consultant_preference
    fill_in "Email", with: @booking.email
    fill_in "Payment type", with: @booking.payment_type
    fill_in "Phone", with: @booking.phone
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Additional information", with: @booking.additional_information
    fill_in "Appointment date", with: @booking.appointment_date
    fill_in "Client name", with: @booking.client_name
    fill_in "Consultant preference", with: @booking.consultant_preference
    fill_in "Email", with: @booking.email
    fill_in "Payment type", with: @booking.payment_type
    fill_in "Phone", with: @booking.phone
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
