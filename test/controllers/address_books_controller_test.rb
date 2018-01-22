require 'test_helper'

class AddressBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address_book = address_books(:one)
  end

  test "should get index" do
    get address_books_url
    assert_response :success
  end

  test "should get new" do
    get new_address_book_url
    assert_response :success
  end

  test "should create address_book" do
    assert_difference('AddressBook.count') do
      post address_books_url, params: { address_book: { address_01: @address_book.address_01, address_02: @address_book.address_02, name: @address_book.name, phone: @address_book.phone, zipcode: @address_book.zipcode, zipcode_01: @address_book.zipcode_01, zipcode_02: @address_book.zipcode_02 } }
    end

    assert_redirected_to address_book_url(AddressBook.last)
  end

  test "should show address_book" do
    get address_book_url(@address_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_book_url(@address_book)
    assert_response :success
  end

  test "should update address_book" do
    patch address_book_url(@address_book), params: { address_book: { address_01: @address_book.address_01, address_02: @address_book.address_02, name: @address_book.name, phone: @address_book.phone, zipcode: @address_book.zipcode, zipcode_01: @address_book.zipcode_01, zipcode_02: @address_book.zipcode_02 } }
    assert_redirected_to address_book_url(@address_book)
  end

  test "should destroy address_book" do
    assert_difference('AddressBook.count', -1) do
      delete address_book_url(@address_book)
    end

    assert_redirected_to address_books_url
  end
end
