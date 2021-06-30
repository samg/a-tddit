class Baz90sController < ApplicationController
  before_action :set_baz90, only: %i[ show edit update destroy ]

  # GET /baz90s or /baz90s.json
  def index
    @baz90s = Baz90.all
  end

  # GET /baz90s/1 or /baz90s/1.json
  def show
  end

  # GET /baz90s/new
  def new
    @baz90 = Baz90.new
  end

  # GET /baz90s/1/edit
  def edit
  end

  # POST /baz90s or /baz90s.json
  def create
    @baz90 = Baz90.new(baz90_params)

    respond_to do |format|
      if @baz90.save
        format.html { redirect_to @baz90, notice: "Baz90 was successfully created." }
        format.json { render :show, status: :created, location: @baz90 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz90.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz90s/1 or /baz90s/1.json
  def update
    respond_to do |format|
      if @baz90.update(baz90_params)
        format.html { redirect_to @baz90, notice: "Baz90 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz90 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz90.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz90s/1 or /baz90s/1.json
  def destroy
    @baz90.destroy
    respond_to do |format|
      format.html { redirect_to baz90s_url, notice: "Baz90 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz90
      @baz90 = Baz90.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz90_params
      params.require(:baz90).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
