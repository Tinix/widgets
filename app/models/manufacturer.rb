# frozen_string_literal: true

class Manufacturer < ApplicationRecord

  # Associations
  has_many :widgets
end
