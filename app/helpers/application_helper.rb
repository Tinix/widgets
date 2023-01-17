# frozen_string_literal: true

module ApplicationHelper
  def widget_ratings_component(widget, suppress_cta: false)
    render partial: 'widgets/rating',
           locals: { widget_presenter: @widget_presenter, suppress_cta: suppress_cta }
  end

  def styled_midget_id(formatted_id)
		%{
      <span style=\"font-family: monospace\">
        #{ formatted_id }
      </span>
    }.html_safe
  end
end
