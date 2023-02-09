# frozen_string_literal: true

class Widget < ApplicationRecord
  # Associations
  belongs_to :manufacturer
  belongs_to :widgets_status

  # Validations
  validates :name, presence: true
  validates :price_cents,
            numericality: { less_than_or_equal_to: 10_000_00 }

  before_validation do
    self.name = nil if name.blank?
  end

  def self.fresh
    where(status: 'fresh')
  end

  def user_facing_identifier
    id_has_string = id.to_s
    return id_has_string if id_has_string.length < 3

    format('%<first>s. %<last_two>s', first: id_has_string[0..-3], last_two: id_has_string[-2..])
  end
end
