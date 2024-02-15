class Post < ApplicationRecord

    belongs_to :user
    has_many :comments

    validates :link_url, presence: true
    validates :user_id, presence: true

end
