class Homepage < ApplicationRecord
  belongs_to :setting
  has_many :sliders
end
