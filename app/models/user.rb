class User < ApplicationRecord
    # checks if title is there and that the length isn't to long/short
    validates :username, presence: true, length: {minimum: 6, maximimum: 100}
    validates :email, presence: true
end