class Bar27sController < ApplicationController
  before_action :set_bar27, only: %i[ show edit update destroy ]

  # GET /bar27s or /bar27s.json
  def index
    @bar27s = Bar27.all
  end

  # GET /bar27s/1 or /bar27s/1.json
  def show
  end

  # GET /bar27s/new
  def new
    @bar27 = Bar27.new
  end

  # GET /bar27s/1/edit
  def edit
  end

  # POST /bar27s or /bar27s.json
  def create
    @bar27 = Bar27.new(bar27_params)

    respond_to do |format|
      if @bar27.save
        format.html { redirect_to @bar27, notice: "Bar27 was successfully created." }
        format.json { render :show, status: :created, location: @bar27 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar27.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar27s/1 or /bar27s/1.json
  def update
    respond_to do |format|
      if @bar27.update(bar27_params)
        format.html { redirect_to @bar27, notice: "Bar27 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar27 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar27.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar27s/1 or /bar27s/1.json
  def destroy
    @bar27.destroy
    respond_to do |format|
      format.html { redirect_to bar27s_url, notice: "Bar27 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar27
      @bar27 = Bar27.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar27_params
      params.require(:bar27).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
