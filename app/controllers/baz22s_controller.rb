class Baz22sController < ApplicationController
  before_action :set_baz22, only: %i[ show edit update destroy ]

  # GET /baz22s or /baz22s.json
  def index
    @baz22s = Baz22.all
  end

  # GET /baz22s/1 or /baz22s/1.json
  def show
  end

  # GET /baz22s/new
  def new
    @baz22 = Baz22.new
  end

  # GET /baz22s/1/edit
  def edit
  end

  # POST /baz22s or /baz22s.json
  def create
    @baz22 = Baz22.new(baz22_params)

    respond_to do |format|
      if @baz22.save
        format.html { redirect_to @baz22, notice: "Baz22 was successfully created." }
        format.json { render :show, status: :created, location: @baz22 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz22.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz22s/1 or /baz22s/1.json
  def update
    respond_to do |format|
      if @baz22.update(baz22_params)
        format.html { redirect_to @baz22, notice: "Baz22 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz22 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz22.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz22s/1 or /baz22s/1.json
  def destroy
    @baz22.destroy
    respond_to do |format|
      format.html { redirect_to baz22s_url, notice: "Baz22 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz22
      @baz22 = Baz22.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz22_params
      params.require(:baz22).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
