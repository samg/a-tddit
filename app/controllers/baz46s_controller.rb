class Baz46sController < ApplicationController
  before_action :set_baz46, only: %i[ show edit update destroy ]

  # GET /baz46s or /baz46s.json
  def index
    @baz46s = Baz46.all
  end

  # GET /baz46s/1 or /baz46s/1.json
  def show
  end

  # GET /baz46s/new
  def new
    @baz46 = Baz46.new
  end

  # GET /baz46s/1/edit
  def edit
  end

  # POST /baz46s or /baz46s.json
  def create
    @baz46 = Baz46.new(baz46_params)

    respond_to do |format|
      if @baz46.save
        format.html { redirect_to @baz46, notice: "Baz46 was successfully created." }
        format.json { render :show, status: :created, location: @baz46 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz46.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz46s/1 or /baz46s/1.json
  def update
    respond_to do |format|
      if @baz46.update(baz46_params)
        format.html { redirect_to @baz46, notice: "Baz46 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz46 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz46.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz46s/1 or /baz46s/1.json
  def destroy
    @baz46.destroy
    respond_to do |format|
      format.html { redirect_to baz46s_url, notice: "Baz46 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz46
      @baz46 = Baz46.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz46_params
      params.require(:baz46).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
