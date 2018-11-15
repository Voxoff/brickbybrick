class Target < ApplicationRecord
  validates :target, numericality: { only_integer: true, greater_than: 0 }
  validates :savings, numericality: { only_integer: true }
end
