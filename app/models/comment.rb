class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :post

    validates :body, length: { in: 1..250 }
    validates :user_id, presence: true
    validates :post_id, presence: true

end
