class Baz12sController < ApplicationController
  before_action :set_baz12, only: %i[ show edit update destroy ]

  # GET /baz12s or /baz12s.json
  def index
    @baz12s = Baz12.all
  end

  # GET /baz12s/1 or /baz12s/1.json
  def show
  end

  # GET /baz12s/new
  def new
    @baz12 = Baz12.new
  end

  # GET /baz12s/1/edit
  def edit
  end

  # POST /baz12s or /baz12s.json
  def create
    @baz12 = Baz12.new(baz12_params)

    respond_to do |format|
      if @baz12.save
        format.html { redirect_to @baz12, notice: "Baz12 was successfully created." }
        format.json { render :show, status: :created, location: @baz12 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz12s/1 or /baz12s/1.json
  def update
    respond_to do |format|
      if @baz12.update(baz12_params)
        format.html { redirect_to @baz12, notice: "Baz12 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz12 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz12s/1 or /baz12s/1.json
  def destroy
    @baz12.destroy
    respond_to do |format|
      format.html { redirect_to baz12s_url, notice: "Baz12 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz12
      @baz12 = Baz12.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz12_params
      params.require(:baz12).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
