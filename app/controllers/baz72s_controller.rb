class Baz72sController < ApplicationController
  before_action :set_baz72, only: %i[ show edit update destroy ]

  # GET /baz72s or /baz72s.json
  def index
    @baz72s = Baz72.all
  end

  # GET /baz72s/1 or /baz72s/1.json
  def show
  end

  # GET /baz72s/new
  def new
    @baz72 = Baz72.new
  end

  # GET /baz72s/1/edit
  def edit
  end

  # POST /baz72s or /baz72s.json
  def create
    @baz72 = Baz72.new(baz72_params)

    respond_to do |format|
      if @baz72.save
        format.html { redirect_to @baz72, notice: "Baz72 was successfully created." }
        format.json { render :show, status: :created, location: @baz72 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz72.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz72s/1 or /baz72s/1.json
  def update
    respond_to do |format|
      if @baz72.update(baz72_params)
        format.html { redirect_to @baz72, notice: "Baz72 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz72 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz72.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz72s/1 or /baz72s/1.json
  def destroy
    @baz72.destroy
    respond_to do |format|
      format.html { redirect_to baz72s_url, notice: "Baz72 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz72
      @baz72 = Baz72.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz72_params
      params.require(:baz72).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
