class Baz40sController < ApplicationController
  before_action :set_baz40, only: %i[ show edit update destroy ]

  # GET /baz40s or /baz40s.json
  def index
    @baz40s = Baz40.all
  end

  # GET /baz40s/1 or /baz40s/1.json
  def show
  end

  # GET /baz40s/new
  def new
    @baz40 = Baz40.new
  end

  # GET /baz40s/1/edit
  def edit
  end

  # POST /baz40s or /baz40s.json
  def create
    @baz40 = Baz40.new(baz40_params)

    respond_to do |format|
      if @baz40.save
        format.html { redirect_to @baz40, notice: "Baz40 was successfully created." }
        format.json { render :show, status: :created, location: @baz40 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz40.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz40s/1 or /baz40s/1.json
  def update
    respond_to do |format|
      if @baz40.update(baz40_params)
        format.html { redirect_to @baz40, notice: "Baz40 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz40 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz40.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz40s/1 or /baz40s/1.json
  def destroy
    @baz40.destroy
    respond_to do |format|
      format.html { redirect_to baz40s_url, notice: "Baz40 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz40
      @baz40 = Baz40.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz40_params
      params.require(:baz40).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
