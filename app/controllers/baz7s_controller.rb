class Baz7sController < ApplicationController
  before_action :set_baz7, only: %i[ show edit update destroy ]

  # GET /baz7s or /baz7s.json
  def index
    @baz7s = Baz7.all
  end

  # GET /baz7s/1 or /baz7s/1.json
  def show
  end

  # GET /baz7s/new
  def new
    @baz7 = Baz7.new
  end

  # GET /baz7s/1/edit
  def edit
  end

  # POST /baz7s or /baz7s.json
  def create
    @baz7 = Baz7.new(baz7_params)

    respond_to do |format|
      if @baz7.save
        format.html { redirect_to @baz7, notice: "Baz7 was successfully created." }
        format.json { render :show, status: :created, location: @baz7 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz7s/1 or /baz7s/1.json
  def update
    respond_to do |format|
      if @baz7.update(baz7_params)
        format.html { redirect_to @baz7, notice: "Baz7 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz7 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz7s/1 or /baz7s/1.json
  def destroy
    @baz7.destroy
    respond_to do |format|
      format.html { redirect_to baz7s_url, notice: "Baz7 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz7
      @baz7 = Baz7.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz7_params
      params.require(:baz7).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
