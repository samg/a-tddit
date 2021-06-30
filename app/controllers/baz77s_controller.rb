class Baz77sController < ApplicationController
  before_action :set_baz77, only: %i[ show edit update destroy ]

  # GET /baz77s or /baz77s.json
  def index
    @baz77s = Baz77.all
  end

  # GET /baz77s/1 or /baz77s/1.json
  def show
  end

  # GET /baz77s/new
  def new
    @baz77 = Baz77.new
  end

  # GET /baz77s/1/edit
  def edit
  end

  # POST /baz77s or /baz77s.json
  def create
    @baz77 = Baz77.new(baz77_params)

    respond_to do |format|
      if @baz77.save
        format.html { redirect_to @baz77, notice: "Baz77 was successfully created." }
        format.json { render :show, status: :created, location: @baz77 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz77.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz77s/1 or /baz77s/1.json
  def update
    respond_to do |format|
      if @baz77.update(baz77_params)
        format.html { redirect_to @baz77, notice: "Baz77 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz77 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz77.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz77s/1 or /baz77s/1.json
  def destroy
    @baz77.destroy
    respond_to do |format|
      format.html { redirect_to baz77s_url, notice: "Baz77 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz77
      @baz77 = Baz77.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz77_params
      params.require(:baz77).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
