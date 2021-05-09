class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
  end

  has_one_attached :image
  belongs_to :user
end
