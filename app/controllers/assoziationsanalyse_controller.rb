class AssoziationsanalyseController < ApplicationController
  
  def index
    @auftrags = Auftrag.all
  end
  
end
