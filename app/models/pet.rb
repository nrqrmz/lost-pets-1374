class Pet < ApplicationRecord
  SPECIES = %w[cat dog rabbit snake turtle].freeze

  validates :name, presence: true
  validates :specie, inclusion: { in: SPECIES }

  def days_lost
    days_num = (Date.today - found_on).to_i
    "#{days_num} days lost"
  end
end
