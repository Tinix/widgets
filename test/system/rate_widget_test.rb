# frozen_string_literal: true

#
# rate_widget_test.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#

require 'application_system_test_case'

class RateWidgetsTest < BrowserSystemTestCase
  test 'rating a widget shows our rating inline' do
    visit widget_path(1234)
    click_on '2'

    assert_selector '[data-rating-present]',
                    text: /thanks for rating.*2/i
  end
end
