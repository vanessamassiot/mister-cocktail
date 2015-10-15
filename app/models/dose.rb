class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true


  validates :description, presence: true
  validates :cocktail && :ingredient, uniqueness: true
end
