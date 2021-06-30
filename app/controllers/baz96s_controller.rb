class Baz96sController < ApplicationController
  before_action :set_baz96, only: %i[ show edit update destroy ]

  # GET /baz96s or /baz96s.json
  def index
    @baz96s = Baz96.all
  end

  # GET /baz96s/1 or /baz96s/1.json
  def show
  end

  # GET /baz96s/new
  def new
    @baz96 = Baz96.new
  end

  # GET /baz96s/1/edit
  def edit
  end

  # POST /baz96s or /baz96s.json
  def create
    @baz96 = Baz96.new(baz96_params)

    respond_to do |format|
      if @baz96.save
        format.html { redirect_to @baz96, notice: "Baz96 was successfully created." }
        format.json { render :show, status: :created, location: @baz96 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz96.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz96s/1 or /baz96s/1.json
  def update
    respond_to do |format|
      if @baz96.update(baz96_params)
        format.html { redirect_to @baz96, notice: "Baz96 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz96 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz96.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz96s/1 or /baz96s/1.json
  def destroy
    @baz96.destroy
    respond_to do |format|
      format.html { redirect_to baz96s_url, notice: "Baz96 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz96
      @baz96 = Baz96.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz96_params
      params.require(:baz96).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
