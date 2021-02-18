class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: {scope: :ingredient}
  belongs_to :cocktail
  belongs_to :ingredient
end
