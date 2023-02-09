#
# widget_factory.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
FactoryBot.define do
  factory :widget do
    name { Faker::Lorem.unique.word }
    price_cents { Faker::Number.within(range: 1..10_000_00) }
    manufacturer
    widget_status
  end
end
