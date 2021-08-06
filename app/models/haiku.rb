class Haiku < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :season

  with_options presence: true do
    validates :kami
    validates :naka
    validates :shimo 
  end

  validates :season_id, numericality: { other_than: 0, message: "can't be blank" } 
end
