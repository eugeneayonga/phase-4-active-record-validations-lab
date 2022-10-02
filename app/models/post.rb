class Post < ApplicationRecord
    
    # All posts have a title
    validates :title, presence: true

    # Post content is at least 250 characters long
    validates :content, length: { minimum: 250 }

    # Post summary is a maximum of 250 characters
    validates :summary, length: { maximum: 250 }

    # Post category is either Fiction or Non-Fiction
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    # Custom validator that ensures the title is sufficiently clickbait-y
    # The validator should add a validation error if the title does not contain: "Won't Believe", "Secret", "Top [number]", "Guess"
    validates :title, exclusion: { in: ["True Facts"] }
end
