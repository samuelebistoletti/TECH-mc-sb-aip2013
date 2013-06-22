class AboutUsController < ApplicationController
  def company
    @title = 'La Nostra Azienda'
    @breadcrumb = '<span class="current_crumb">Chi siamo &nbsp;&nbsp;-&nbsp;&nbsp; L\'Azienda</span>'
  end

  def tradition
    @title = 'Stile e Tradizione'
    @breadcrumb = '<span class="current_crumb">Chi siamo &nbsp;&nbsp;-&nbsp;&nbsp; Stile e Tradizione</span>'
  end
end