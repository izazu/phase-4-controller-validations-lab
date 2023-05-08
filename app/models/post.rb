class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'], message: "%{value} is not a valid category" }
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
    validates_inclusion_of :category, in: ['Fiction', 'Non-Fiction'], message: 'is not included in the list'

end
  