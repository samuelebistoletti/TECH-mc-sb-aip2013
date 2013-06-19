class AdminController < ApplicationController
  def index
    @title = 'Area di amministrazione'
    @breadcrumb = '<span class="current_crumb">Amministrazione </span>'
  end
  def products
  end
end
