#
# manufacturer_factory.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
FactoryBot.define do
  factory :manufacturer do
    name { Faker::Company.name }
    address
  end
end



