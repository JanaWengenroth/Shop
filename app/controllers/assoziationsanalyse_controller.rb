class AssoziationsanalyseController < ApplicationController
  
  def index
    @auftrags = Auftrag.all
    @produkts = Produkt.all
  end
  
  
#  def assoziation
#     @konfidenz = params[:konfidenz]
#     @support = params[:support]
#     render "index"
#  end
 
  
  def show
     @auftrags = Auftrag.all
     @produkts = Produkt.all
     @konfidenz = params[:konfidenz]
     @support = params[:support]
     render "index"
  end
end
