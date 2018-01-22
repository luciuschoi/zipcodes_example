json.extract! address_book, :id, :name, :phone, :zipcode, :zipcode_01, :zipcode_02, :address_01, :address_02, :created_at, :updated_at
json.url address_book_url(address_book, format: :json)
