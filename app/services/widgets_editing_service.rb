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
     EditedWidgetJob.perform_later(widget.id)
    end

    widget
  end

  def post_widget_edit(widget)
    # create the InventoryReport
    # # check the manufacturer to see who to notify
    # # trigger the AdminMailer to notify whoever
    # # should be notified
  end
end

