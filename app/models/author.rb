class Author < ApplicationRecord
    
    # All authors have a name
    # All authors have a unique name
    validates :name, presence: true, uniqueness: true

    # All authors have a phone_number of exactly 10 digits
    validates :phone_number, length: { is: 10 }
end
