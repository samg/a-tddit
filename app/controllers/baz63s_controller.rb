class Baz63sController < ApplicationController
  before_action :set_baz63, only: %i[ show edit update destroy ]

  # GET /baz63s or /baz63s.json
  def index
    @baz63s = Baz63.all
  end

  # GET /baz63s/1 or /baz63s/1.json
  def show
  end

  # GET /baz63s/new
  def new
    @baz63 = Baz63.new
  end

  # GET /baz63s/1/edit
  def edit
  end

  # POST /baz63s or /baz63s.json
  def create
    @baz63 = Baz63.new(baz63_params)

    respond_to do |format|
      if @baz63.save
        format.html { redirect_to @baz63, notice: "Baz63 was successfully created." }
        format.json { render :show, status: :created, location: @baz63 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz63.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz63s/1 or /baz63s/1.json
  def update
    respond_to do |format|
      if @baz63.update(baz63_params)
        format.html { redirect_to @baz63, notice: "Baz63 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz63 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz63.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz63s/1 or /baz63s/1.json
  def destroy
    @baz63.destroy
    respond_to do |format|
      format.html { redirect_to baz63s_url, notice: "Baz63 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz63
      @baz63 = Baz63.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz63_params
      params.require(:baz63).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
