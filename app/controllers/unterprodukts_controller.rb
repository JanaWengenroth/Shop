class UnterproduktsController < ApplicationController
  before_action :set_unterprodukt, only: [:show, :edit, :update, :destroy]

  # GET /unterprodukts
  # GET /unterprodukts.json
  def index
    @unterprodukts = Unterprodukt.all
  end

  # GET /unterprodukts/1
  # GET /unterprodukts/1.json
  def show
  end

  # GET /unterprodukts/new
  def new
    @unterprodukt = Unterprodukt.new
  end

  # GET /unterprodukts/1/edit
  def edit
  end
   
  
  def stuecklist
    tmp[] = Produkt.get_oberprodukt()
    
    tmp.each do |obj|
      obj.name
    end
    
  end
  
  
  # POST /unterprodukts
  # POST /unterprodukts.json
  def create
    @unterprodukt = Unterprodukt.new(unterprodukt_params)

    respond_to do |format|
      if @unterprodukt.save
        format.html { redirect_to @unterprodukt, notice: 'Unterprodukt was successfully created.' }
        format.json { render :show, status: :created, location: @unterprodukt }
      else
        format.html { render :new }
        format.json { render json: @unterprodukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unterprodukts/1
  # PATCH/PUT /unterprodukts/1.json
  def update
    respond_to do |format|
      if @unterprodukt.update(unterprodukt_params)
        format.html { redirect_to @unterprodukt, notice: 'Unterprodukt was successfully updated.' }
        format.json { render :show, status: :ok, location: @unterprodukt }
      else
        format.html { render :edit }
        format.json { render json: @unterprodukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unterprodukts/1
  # DELETE /unterprodukts/1.json
  def destroy
    @unterprodukt.destroy
    respond_to do |format|
      format.html { redirect_to unterprodukts_url, notice: 'Unterprodukt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unterprodukt
      @unterprodukt = Unterprodukt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unterprodukt_params
      params.require(:unterprodukt).permit(:menge)
    end
    
   
    
   

end
