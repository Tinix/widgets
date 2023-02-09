# frozen_string_literal: true

#
# lint_factories_test.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
require 'test_helper'

class LintFactoriesTest < ActiveSupport::TestCase
  test 'all factories can be created' do
    FactoryBot.lint traits: true
  end
end
