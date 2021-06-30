class Bar87sController < ApplicationController
  before_action :set_bar87, only: %i[ show edit update destroy ]

  # GET /bar87s or /bar87s.json
  def index
    @bar87s = Bar87.all
  end

  # GET /bar87s/1 or /bar87s/1.json
  def show
  end

  # GET /bar87s/new
  def new
    @bar87 = Bar87.new
  end

  # GET /bar87s/1/edit
  def edit
  end

  # POST /bar87s or /bar87s.json
  def create
    @bar87 = Bar87.new(bar87_params)

    respond_to do |format|
      if @bar87.save
        format.html { redirect_to @bar87, notice: "Bar87 was successfully created." }
        format.json { render :show, status: :created, location: @bar87 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar87.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar87s/1 or /bar87s/1.json
  def update
    respond_to do |format|
      if @bar87.update(bar87_params)
        format.html { redirect_to @bar87, notice: "Bar87 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar87 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar87.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar87s/1 or /bar87s/1.json
  def destroy
    @bar87.destroy
    respond_to do |format|
      format.html { redirect_to bar87s_url, notice: "Bar87 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar87
      @bar87 = Bar87.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar87_params
      params.require(:bar87).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
