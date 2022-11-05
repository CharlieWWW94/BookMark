class Book < ApplicationRecord
    has_many :book_lists, dependent: :destroy
    has_many :lists, through: :book_lists
end
