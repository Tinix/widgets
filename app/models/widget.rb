# frozen_string_literal: true

class Widget < ApplicationRecord
  # Associations
  belongs_to :manufacturer

  # Validations
  validates :name, presence: true

  def self.fresh
    self.where(status: "fresh")
  end

  def user_facing_identifier
    id_has_string = self.id.to_s
    if id_has_string.length < 3
      return id_has_string
    end

    "%{first}. %{last_two}" % { 
    first: id_has_string[0..-3],
    last_two: id_has_string[-2..-1]
    }
  end
end
