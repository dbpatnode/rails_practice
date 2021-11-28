class Article < ApplicationRecord
    belongs_to :user
    # checks if title is there and that the length isn't to long/short
    validates :title, presence: true, length: {minimum: 6, maximimum: 100}
    validates :description, presence: true, length: {minimum: 10, maximimum: 5000}

end