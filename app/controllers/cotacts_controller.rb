class CotactsController < ApplicationController
  before_action :set_cotact, only: [:show, :edit, :update, :destroy]

  # GET /cotacts
  # GET /cotacts.json
  def index
    @cotacts = Cotact.all
  end

  # GET /cotacts/1
  # GET /cotacts/1.json
  def show
  end

  # GET /cotacts/new
  def new
    @cotact = Cotact.new
  end

  # GET /cotacts/1/edit
  def edit
  end

  # POST /cotacts
  # POST /cotacts.json
  def create
    @cotact = Cotact.new(cotact_params)

    respond_to do |format|
      if @cotact.save
        format.html { redirect_to @cotact, notice: 'Cotact was successfully created.' }
        format.json { render :show, status: :created, location: @cotact }
      else
        format.html { render :new }
        format.json { render json: @cotact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotacts/1
  # PATCH/PUT /cotacts/1.json
  def update
    respond_to do |format|
      if @cotact.update(cotact_params)
        format.html { redirect_to @cotact, notice: 'Cotact was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotact }
      else
        format.html { render :edit }
        format.json { render json: @cotact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotacts/1
  # DELETE /cotacts/1.json
  def destroy
    @cotact.destroy
    respond_to do |format|
      format.html { redirect_to cotacts_url, notice: 'Cotact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotact
      @cotact = Cotact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotact_params
      params.require(:cotact).permit(:name, :email, :phone, :message)
    end
end
