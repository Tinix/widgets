#
# lograge.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
Rails.application.configure do
  if !Rails.env.development? ||
      ENV["LOGRAGE_IN_DEVELOPMENT"] == true
    config.lograge.enabled = true
  else
    config.lograge.enabled = false
  end
end


