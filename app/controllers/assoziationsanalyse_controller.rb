class AssoziationsanalyseController < ApplicationController
  
  def index
    @auftrags = Auftrag.all
    @produkts = Produkt.all
    @konfidenz = params[:konfidenz]
    @support = params[:support]
  end
  
  
  def assoziation
     render "index"
  end
end
