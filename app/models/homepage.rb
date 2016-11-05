class Homepage < ApplicationRecord
  belongs_to :setting
  has_many :sliders
  has_many :promos
  has_many :testimonials
  has_one :newsletter
end
