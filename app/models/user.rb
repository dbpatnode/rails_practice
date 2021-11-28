class User < ApplicationRecord
    # uniquness: {case_sesnitive:false} ensures even if someone enters the same email with capitols that an error message will be thrown
    validates :username, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: {minimum: 3, maximimum: 25}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ 
    validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: {minimum: 3, maximimum: 105},
                    format: { with: VALID_EMAIL_REGEX }
end