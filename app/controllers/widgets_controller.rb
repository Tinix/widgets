# frozen_string_literal: true

#
# widgets_controller.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
class WidgetsController < ApplicationController
  before_action :set_widget, only: %i[show edit update destroy]

  def index
    @widgets = [
      OpenStruct.new(id: 1, name: "Stembolt"),
      OpenStruct.new(id: 2, name: "Flux Capacitor"),
    ]
  end

  def edit; end

  def show
    manofacturer = OpenStruct.new(
      id: rand(100),
      name: "Sector 7G",
      address: OpenStruct.new(
        id: rand(100),
        country: "AR"
      )
    )
    @widget = OpenStruct.new(id: params[:id],
                             manufacturer_id: manufacturer.id,
														 manufacturer: manufacturer,
                             name: "Widget #{params[:id]}")
		def @widget.widget_id
			if self.id.to_s.length < 3
				self.id.to_s
			else
				self.id.to_s[0..-3] + "." +
					self.id.to_s[-2..-1]
			end
		end
    @widget = WidgetPresenter.new(widget)
  end

  def update
    if params[:widget][:rating].present?
      # update the rating
    else
      # do some other sort of update
    end

    @widget = WidgetEditingService.new.edit_widget(
      widget, widget_params
    )

    if @widget.valid?
      redirect_to widgets_path
    else
      render :edit
    end
  end

  private

  def set_widget
    @widget = Widget.find(params[:id])
  end

  def widget_params
    params.require(:widget).permit(:name, :status, :type)
  end
end
