class Baz64sController < ApplicationController
  before_action :set_baz64, only: %i[ show edit update destroy ]

  # GET /baz64s or /baz64s.json
  def index
    @baz64s = Baz64.all
  end

  # GET /baz64s/1 or /baz64s/1.json
  def show
  end

  # GET /baz64s/new
  def new
    @baz64 = Baz64.new
  end

  # GET /baz64s/1/edit
  def edit
  end

  # POST /baz64s or /baz64s.json
  def create
    @baz64 = Baz64.new(baz64_params)

    respond_to do |format|
      if @baz64.save
        format.html { redirect_to @baz64, notice: "Baz64 was successfully created." }
        format.json { render :show, status: :created, location: @baz64 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz64.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz64s/1 or /baz64s/1.json
  def update
    respond_to do |format|
      if @baz64.update(baz64_params)
        format.html { redirect_to @baz64, notice: "Baz64 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz64 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz64.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz64s/1 or /baz64s/1.json
  def destroy
    @baz64.destroy
    respond_to do |format|
      format.html { redirect_to baz64s_url, notice: "Baz64 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz64
      @baz64 = Baz64.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz64_params
      params.require(:baz64).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
