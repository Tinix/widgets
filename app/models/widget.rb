# frozen_string_literal: true

class Widget < ApplicationRecord
  # Associations
  belongs_to :manufacturer

  # Validations
  validates :name, presence: true

  def self.fresh
    self.where(status: "fresh")
  end
end
