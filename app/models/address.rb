# frozen_string_literal: true

#
# address.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
class Address < ApplicationRecord
  # Associations
  has_many :manufacturers
end
