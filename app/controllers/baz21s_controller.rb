class Baz21sController < ApplicationController
  before_action :set_baz21, only: %i[ show edit update destroy ]

  # GET /baz21s or /baz21s.json
  def index
    @baz21s = Baz21.all
  end

  # GET /baz21s/1 or /baz21s/1.json
  def show
  end

  # GET /baz21s/new
  def new
    @baz21 = Baz21.new
  end

  # GET /baz21s/1/edit
  def edit
  end

  # POST /baz21s or /baz21s.json
  def create
    @baz21 = Baz21.new(baz21_params)

    respond_to do |format|
      if @baz21.save
        format.html { redirect_to @baz21, notice: "Baz21 was successfully created." }
        format.json { render :show, status: :created, location: @baz21 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz21.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz21s/1 or /baz21s/1.json
  def update
    respond_to do |format|
      if @baz21.update(baz21_params)
        format.html { redirect_to @baz21, notice: "Baz21 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz21 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz21.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz21s/1 or /baz21s/1.json
  def destroy
    @baz21.destroy
    respond_to do |format|
      format.html { redirect_to baz21s_url, notice: "Baz21 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz21
      @baz21 = Baz21.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz21_params
      params.require(:baz21).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
