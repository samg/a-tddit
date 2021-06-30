class Baz97sController < ApplicationController
  before_action :set_baz97, only: %i[ show edit update destroy ]

  # GET /baz97s or /baz97s.json
  def index
    @baz97s = Baz97.all
  end

  # GET /baz97s/1 or /baz97s/1.json
  def show
  end

  # GET /baz97s/new
  def new
    @baz97 = Baz97.new
  end

  # GET /baz97s/1/edit
  def edit
  end

  # POST /baz97s or /baz97s.json
  def create
    @baz97 = Baz97.new(baz97_params)

    respond_to do |format|
      if @baz97.save
        format.html { redirect_to @baz97, notice: "Baz97 was successfully created." }
        format.json { render :show, status: :created, location: @baz97 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz97.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz97s/1 or /baz97s/1.json
  def update
    respond_to do |format|
      if @baz97.update(baz97_params)
        format.html { redirect_to @baz97, notice: "Baz97 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz97 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz97.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz97s/1 or /baz97s/1.json
  def destroy
    @baz97.destroy
    respond_to do |format|
      format.html { redirect_to baz97s_url, notice: "Baz97 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz97
      @baz97 = Baz97.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz97_params
      params.require(:baz97).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
