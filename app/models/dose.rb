class Dose < ApplicationRecord
  belongs_to :cocktail
  validates :cocktail, :presence => true
  belongs_to :ingredient
  validates :ingredient, :presence => true
  validates :description, presence: true
  validates :cocktail, :uniqueness => { :scope => :ingredient }
end
