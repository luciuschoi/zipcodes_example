require "application_system_test_case"

class AddressBooksTest < ApplicationSystemTestCase
  setup do
    @address_book = address_books(:one)
  end

  test "visiting the index" do
    visit address_books_url
    assert_selector "h1", text: "Address Books"
  end

  test "creating a Address book" do
    visit address_books_url
    click_on "New Address Book"

    fill_in "Address 01", with: @address_book.address_01
    fill_in "Address 02", with: @address_book.address_02
    fill_in "Name", with: @address_book.name
    fill_in "Phone", with: @address_book.phone
    fill_in "Zipcode", with: @address_book.zipcode
    fill_in "Zipcode 01", with: @address_book.zipcode_01
    fill_in "Zipcode 02", with: @address_book.zipcode_02
    click_on "Create Address book"

    assert_text "Address book was successfully created"
    click_on "Back"
  end

  test "updating a Address book" do
    visit address_books_url
    click_on "Edit", match: :first

    fill_in "Address 01", with: @address_book.address_01
    fill_in "Address 02", with: @address_book.address_02
    fill_in "Name", with: @address_book.name
    fill_in "Phone", with: @address_book.phone
    fill_in "Zipcode", with: @address_book.zipcode
    fill_in "Zipcode 01", with: @address_book.zipcode_01
    fill_in "Zipcode 02", with: @address_book.zipcode_02
    click_on "Update Address book"

    assert_text "Address book was successfully updated"
    click_on "Back"
  end

  test "destroying a Address book" do
    visit address_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address book was successfully destroyed"
  end
end
