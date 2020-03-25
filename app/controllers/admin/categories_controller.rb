# frozen_string_literal: true

class Admin::CategoriesController < ApplicationController
  def new; end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = 'Create category success'
      redirect_to root_path
    else
      flash[:success] = 'Create category failed'
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit :name
  end
end
