# frozen_string_literal: true

#
# view_widget_test.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require 'application_system_test_case'

class ViewWidgetTest < ApplicationSystemTestCase
  test 'we can see a list of widgets and choose one to view' do
    visit widgets_path

    widget_name = 'stembolt'
    widget_name_regexp = /#{widget_name}/i

    assert_selector 'ul li', text: /flux capacitor/i
    assert_selector 'ul li', text: widget_name_regexp

    find('ul li', text: widget_name_regexp).find('a').click

    formatted_widget_id_regexp = /12\.34/
    assert_selector "[data-testid='widget-name']", text: widget_name_regexp
    assert_selector 'h2', text: formatted_widget_id_regexp
  end
end
