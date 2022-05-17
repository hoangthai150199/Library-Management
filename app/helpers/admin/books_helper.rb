module Admin
  module BooksHelper
    def current(book)
      current_borrow = book.borrow_requets.map(&:book_id).count
      book.amount - current_borrow
    end
  end
end
