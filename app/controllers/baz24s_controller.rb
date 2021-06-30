class Baz24sController < ApplicationController
  before_action :set_baz24, only: %i[ show edit update destroy ]

  # GET /baz24s or /baz24s.json
  def index
    @baz24s = Baz24.all
  end

  # GET /baz24s/1 or /baz24s/1.json
  def show
  end

  # GET /baz24s/new
  def new
    @baz24 = Baz24.new
  end

  # GET /baz24s/1/edit
  def edit
  end

  # POST /baz24s or /baz24s.json
  def create
    @baz24 = Baz24.new(baz24_params)

    respond_to do |format|
      if @baz24.save
        format.html { redirect_to @baz24, notice: "Baz24 was successfully created." }
        format.json { render :show, status: :created, location: @baz24 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz24.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz24s/1 or /baz24s/1.json
  def update
    respond_to do |format|
      if @baz24.update(baz24_params)
        format.html { redirect_to @baz24, notice: "Baz24 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz24 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz24.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz24s/1 or /baz24s/1.json
  def destroy
    @baz24.destroy
    respond_to do |format|
      format.html { redirect_to baz24s_url, notice: "Baz24 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz24
      @baz24 = Baz24.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz24_params
      params.require(:baz24).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
