# frozen_string_literal: true

#
# widget_ratings_controller.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
#
class WidgetRatingsController < ApplicationController
  def create
    if params[:widget_id]
      # find the widget and update its rating
      redirect_to widget_path(params[:widget_id]),
                  flash[:notice] = 'Thanks for rating!'
    else
      head :bad_request
    end
  end
end
