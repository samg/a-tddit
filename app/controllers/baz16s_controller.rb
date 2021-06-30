class Baz16sController < ApplicationController
  before_action :set_baz16, only: %i[ show edit update destroy ]

  # GET /baz16s or /baz16s.json
  def index
    @baz16s = Baz16.all
  end

  # GET /baz16s/1 or /baz16s/1.json
  def show
  end

  # GET /baz16s/new
  def new
    @baz16 = Baz16.new
  end

  # GET /baz16s/1/edit
  def edit
  end

  # POST /baz16s or /baz16s.json
  def create
    @baz16 = Baz16.new(baz16_params)

    respond_to do |format|
      if @baz16.save
        format.html { redirect_to @baz16, notice: "Baz16 was successfully created." }
        format.json { render :show, status: :created, location: @baz16 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz16s/1 or /baz16s/1.json
  def update
    respond_to do |format|
      if @baz16.update(baz16_params)
        format.html { redirect_to @baz16, notice: "Baz16 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz16 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz16s/1 or /baz16s/1.json
  def destroy
    @baz16.destroy
    respond_to do |format|
      format.html { redirect_to baz16s_url, notice: "Baz16 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz16
      @baz16 = Baz16.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz16_params
      params.require(:baz16).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
