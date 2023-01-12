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
    @midget = OpenStruct.new(id: params[:id],
                             manofacturer_id: rand(100),
                             name: "Widget #{params[:id]}")
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