class Bar16sController < ApplicationController
  before_action :set_bar16, only: %i[ show edit update destroy ]

  # GET /bar16s or /bar16s.json
  def index
    @bar16s = Bar16.all
  end

  # GET /bar16s/1 or /bar16s/1.json
  def show
  end

  # GET /bar16s/new
  def new
    @bar16 = Bar16.new
  end

  # GET /bar16s/1/edit
  def edit
  end

  # POST /bar16s or /bar16s.json
  def create
    @bar16 = Bar16.new(bar16_params)

    respond_to do |format|
      if @bar16.save
        format.html { redirect_to @bar16, notice: "Bar16 was successfully created." }
        format.json { render :show, status: :created, location: @bar16 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar16s/1 or /bar16s/1.json
  def update
    respond_to do |format|
      if @bar16.update(bar16_params)
        format.html { redirect_to @bar16, notice: "Bar16 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar16 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar16s/1 or /bar16s/1.json
  def destroy
    @bar16.destroy
    respond_to do |format|
      format.html { redirect_to bar16s_url, notice: "Bar16 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar16
      @bar16 = Bar16.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar16_params
      params.require(:bar16).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
