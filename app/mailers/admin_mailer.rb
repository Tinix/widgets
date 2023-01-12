# frozen_string_literal: true

class AdminMailer < ApplicationMailer
  def edited_widget(widget)
    @wiget = widget
  end

  def edited_widget_for_supervisor(widget)
    @widget = widget
  end
end
