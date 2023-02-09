#
# widget_status_factory.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
FactoryBot.define do
	factory :widget_status do
		name { Faker::Lorem.unique.word }
	end
end

