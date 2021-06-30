class Baz87sController < ApplicationController
  before_action :set_baz87, only: %i[ show edit update destroy ]

  # GET /baz87s or /baz87s.json
  def index
    @baz87s = Baz87.all
  end

  # GET /baz87s/1 or /baz87s/1.json
  def show
  end

  # GET /baz87s/new
  def new
    @baz87 = Baz87.new
  end

  # GET /baz87s/1/edit
  def edit
  end

  # POST /baz87s or /baz87s.json
  def create
    @baz87 = Baz87.new(baz87_params)

    respond_to do |format|
      if @baz87.save
        format.html { redirect_to @baz87, notice: "Baz87 was successfully created." }
        format.json { render :show, status: :created, location: @baz87 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz87.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz87s/1 or /baz87s/1.json
  def update
    respond_to do |format|
      if @baz87.update(baz87_params)
        format.html { redirect_to @baz87, notice: "Baz87 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz87 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz87.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz87s/1 or /baz87s/1.json
  def destroy
    @baz87.destroy
    respond_to do |format|
      format.html { redirect_to baz87s_url, notice: "Baz87 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz87
      @baz87 = Baz87.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz87_params
      params.require(:baz87).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
