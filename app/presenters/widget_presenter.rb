# frozen_string_literal: true

#
# widget_presenter.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#

class WidgetPresenter
  include ActionView::Helpers::TagHelper

  delegate_missing_to :@widget

  def initialize(widget)
    @widget = widget
  end

  def styled_widget_id
    content_tag(:span, widget_id, style: 'font-family: monospace')
  end
end
