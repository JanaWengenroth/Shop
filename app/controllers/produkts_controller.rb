class ProduktsController < ApplicationController
  before_action :set_produkt, only: [:show, :edit, :update, :destroy]

  # GET /produkts
  # GET /produkts.json
  def index
    @produkts = Produkt.all
  end

  # GET /produkts/1
  # GET /produkts/1.json
  def show
  end

  # GET /produkts/new
  def new
    @produkt = Produkt.new
  end

  # GET /produkts/1/edit
  def edit
  end

  # POST /produkts
  # POST /produkts.json
  def create
    @produkt = Produkt.new(produkt_params)

    respond_to do |format|
      if @produkt.save
        format.html { redirect_to @produkt, notice: 'Produkt was successfully created.' }
        format.json { render :show, status: :created, location: @produkt }
      else
        format.html { render :new }
        format.json { render json: @produkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produkts/1
  # PATCH/PUT /produkts/1.json
  def update
    respond_to do |format|
      if @produkt.update(produkt_params)
        format.html { redirect_to @produkt, notice: 'Produkt was successfully updated.' }
        format.json { render :show, status: :ok, location: @produkt }
      else
        format.html { render :edit }
        format.json { render json: @produkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produkts/1
  # DELETE /produkts/1.json
  def destroy
    @produkt.destroy
    respond_to do |format|
      format.html { redirect_to produkts_url, notice: 'Produkt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkt
      @produkt = Produkt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkt_params
      params.require(:produkt).permit(:name, :kategorie, :beschreibung, :preis, :gueltigVon, :gueltigBis, :bild)
    end
end
