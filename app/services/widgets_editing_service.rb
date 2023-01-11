#
# widgets_editing_service.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
class WidgetEditingService
  def edit_widget(widget. widget_params)
    widget.update(widget_params)

    if widget.valid?
      # TODO
    end

    widget
  end
end

