class AssoziationsanalyseController < ApplicationController
  
  def index
    @auftrags = Auftrag.all
    @produkts = Produkt.all
  end
  
end
