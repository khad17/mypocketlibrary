class Book < ActiveRecord::Base
    
    def self.getByTitle(bookTitle)
     book = Book.where("title=?", bookTitle)
      if book != nil && book.first != nil
        book.first
      end
    end

end
