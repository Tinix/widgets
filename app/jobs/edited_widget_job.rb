# frozen_string_literal: true

class EditedWidgetJob < ApplicationJob
  queue_as :default

  def perform(widget_id)
    widget = Widget.find(widget_id)
    WidgetEditingServicu.new.post_widget_edit(widget)
  end
end
