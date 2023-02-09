# frozen_string_literal: true

#
# address_factory.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
FactoryBot.define do
  factory :address do
    street { Faker::Address.street_address }
    zip {  Faker::Address.zip }
  end
end
