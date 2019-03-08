class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates  :description, presence: true
  validates  :cocktail, presence: true
  validates :ingredient, uniqueness: true, presence: true
  validates :ingredient, :uniqueness => { :scope => :cocktail }
  belongs_to :ingredient
  belongs_to :cocktail
end
