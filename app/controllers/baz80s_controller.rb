class Baz80sController < ApplicationController
  before_action :set_baz80, only: %i[ show edit update destroy ]

  # GET /baz80s or /baz80s.json
  def index
    @baz80s = Baz80.all
  end

  # GET /baz80s/1 or /baz80s/1.json
  def show
  end

  # GET /baz80s/new
  def new
    @baz80 = Baz80.new
  end

  # GET /baz80s/1/edit
  def edit
  end

  # POST /baz80s or /baz80s.json
  def create
    @baz80 = Baz80.new(baz80_params)

    respond_to do |format|
      if @baz80.save
        format.html { redirect_to @baz80, notice: "Baz80 was successfully created." }
        format.json { render :show, status: :created, location: @baz80 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz80.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz80s/1 or /baz80s/1.json
  def update
    respond_to do |format|
      if @baz80.update(baz80_params)
        format.html { redirect_to @baz80, notice: "Baz80 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz80 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz80.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz80s/1 or /baz80s/1.json
  def destroy
    @baz80.destroy
    respond_to do |format|
      format.html { redirect_to baz80s_url, notice: "Baz80 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz80
      @baz80 = Baz80.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz80_params
      params.require(:baz80).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
