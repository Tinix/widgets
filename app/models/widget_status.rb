# frozen_string_literal: true

#
# widget_status.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
class WidgetStatus < ApplicationRecord
  # Associations
  has_many :widgets
end
