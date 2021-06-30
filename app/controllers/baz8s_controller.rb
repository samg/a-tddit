class Baz8sController < ApplicationController
  before_action :set_baz8, only: %i[ show edit update destroy ]

  # GET /baz8s or /baz8s.json
  def index
    @baz8s = Baz8.all
  end

  # GET /baz8s/1 or /baz8s/1.json
  def show
  end

  # GET /baz8s/new
  def new
    @baz8 = Baz8.new
  end

  # GET /baz8s/1/edit
  def edit
  end

  # POST /baz8s or /baz8s.json
  def create
    @baz8 = Baz8.new(baz8_params)

    respond_to do |format|
      if @baz8.save
        format.html { redirect_to @baz8, notice: "Baz8 was successfully created." }
        format.json { render :show, status: :created, location: @baz8 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz8s/1 or /baz8s/1.json
  def update
    respond_to do |format|
      if @baz8.update(baz8_params)
        format.html { redirect_to @baz8, notice: "Baz8 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz8 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz8s/1 or /baz8s/1.json
  def destroy
    @baz8.destroy
    respond_to do |format|
      format.html { redirect_to baz8s_url, notice: "Baz8 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz8
      @baz8 = Baz8.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz8_params
      params.require(:baz8).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
