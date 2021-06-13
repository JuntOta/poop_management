class Poop < ApplicationRecord
  validates :start_time,  presence: true

  with_options numericality: { other_than: 1 } do
    validates :shape_id
    validates :color_id
    validates :amount_id
    validates :smell_id
  end
  
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :color
  belongs_to :amount
  belongs_to :shape
  belongs_to :smell
end
