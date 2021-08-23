class Haiku < ApplicationRecord
  belongs_to :user, optional: true # optional: true → null登録を許容する

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :season

  with_options presence: true do
    validates :kami
    validates :naka
    validates :shimo 
  end

  validates :season_id, numericality: { other_than: 0, message: "can't be blank" } 

  def self.season_search(season_id)
      Haiku.where(season_id: season_id)
  end
end
