# frozen_string_literal: true

#
# lograge.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
Rails.application.configure do
  config.lograge.enabled = if !Rails.env.development? ||
                              ENV['LOGRAGE_IN_DEVELOPMENT'] == 'true'
                             true
                           else
                             false
                           end
end
