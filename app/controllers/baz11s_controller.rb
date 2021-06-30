class Baz11sController < ApplicationController
  before_action :set_baz11, only: %i[ show edit update destroy ]

  # GET /baz11s or /baz11s.json
  def index
    @baz11s = Baz11.all
  end

  # GET /baz11s/1 or /baz11s/1.json
  def show
  end

  # GET /baz11s/new
  def new
    @baz11 = Baz11.new
  end

  # GET /baz11s/1/edit
  def edit
  end

  # POST /baz11s or /baz11s.json
  def create
    @baz11 = Baz11.new(baz11_params)

    respond_to do |format|
      if @baz11.save
        format.html { redirect_to @baz11, notice: "Baz11 was successfully created." }
        format.json { render :show, status: :created, location: @baz11 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz11s/1 or /baz11s/1.json
  def update
    respond_to do |format|
      if @baz11.update(baz11_params)
        format.html { redirect_to @baz11, notice: "Baz11 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz11 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz11s/1 or /baz11s/1.json
  def destroy
    @baz11.destroy
    respond_to do |format|
      format.html { redirect_to baz11s_url, notice: "Baz11 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz11
      @baz11 = Baz11.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz11_params
      params.require(:baz11).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
