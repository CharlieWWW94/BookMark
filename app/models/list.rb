class List < ApplicationRecord
    belongs_to :user
    has_many :book_lists, dependent: :destroy
    has_many :books, through: :project_assignments
end
