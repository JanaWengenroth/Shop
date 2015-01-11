class AuftragsController < ApplicationController
  before_action :set_auftrag, only: [:show, :edit, :update, :destroy]
  before_filter :warenkorb
  $array =  []

  # GET /auftrags
  # GET /auftrags.json
  def index
    @auftrags = Auftrag.all
  end

  # GET /auftrags/1
  # GET /auftrags/1.json
  def show
  end

  # GET /auftrags/new
  def new
    @auftrag = Auftrag.new
  end

  # GET /auftrags/1/edit
  def edit
  end

  def warenkorb
    session[:warenkorb_produkt] = $array
  end
  
  
  # POST /auftrags
  # POST /auftrags.json
  def create
    @auftrag = Auftrag.new(auftrag_params)

    respond_to do |format|
      if @auftrag.save
        format.html { redirect_to @auftrag, notice: 'Auftrag was successfully created.' }
        format.json { render :show, status: :created, location: @auftrag }
      else
        format.html { render :new }
        format.json { render json: @auftrag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auftrags/1
  # PATCH/PUT /auftrags/1.json
  def update
    respond_to do |format|
      if @auftrag.update(auftrag_params)
        format.html { redirect_to @auftrag, notice: 'Auftrag was successfully updated.' }
        format.json { render :show, status: :ok, location: @auftrag }
      else
        format.html { render :edit }
        format.json { render json: @auftrag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auftrags/1
  # DELETE /auftrags/1.json
  def destroy
    @auftrag.destroy
    respond_to do |format|
      format.html { redirect_to auftrags_url, notice: 'Auftrag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    def bestellung_abschicken
      
      datum = Time.now.strftime("%Y-%m-%d")
      produkte = $array
      kunden_id = Kunde.where(:email => session[:user_session]).first.id
      Auftrag.create(datum: datum, kunden_id: kunden_id)
      
      auftrag = Auftrag.where("datum ='#{datum}' and kunden_id =#{kunden_id}")
      auftrag_id = auftrag.first.id
 
      while (!produkte.empty?)
        a = produkte.first
        accu = produkte.count(a)
        AuftragFuerProdukt.create(auftrag_id: auftrag_id, produkt_id: a , stueckzahl: accu)
        produkte.delete(a)
        
      end
      
     $array = []
     session[:warenkorb_produkt] = $array
    end
    
    def bestell_bestaetigung
      
      
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auftrag
      @auftrag = Auftrag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auftrag_params
      params.require(:auftrag).permit(:datum, :stueckzahl,:kunden_id, :produkt_id)
    end
    
      

end
