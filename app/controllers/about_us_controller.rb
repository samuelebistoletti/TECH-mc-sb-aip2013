class AboutUsController < ApplicationController
  def company
    @title = 'La Nostra Azienda'
    @breadcrumb = '<span class="current_crumb">L\'Azienda</span>'
  end

  def tradition
    @title = 'Stile e Tradizione'
    @breadcrumb = '<span class="current_crumb">Stile e Tradizione</span>'
  end
end