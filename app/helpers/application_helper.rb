# frozen_string_literal: true

module ApplicationHelper
  def widget_ratings_component(widget, suppress_cta: false)
    render partial: 'widgets/rating',
           locals: { widget: widget, suppress_cta: suppress_cta }
  end

  def styled_midget_id(formatted_id)
    content_tag(:span, formatted_id,
                style: 'font-family: monospace')
  end
end
