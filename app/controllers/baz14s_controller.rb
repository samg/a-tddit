class Baz14sController < ApplicationController
  before_action :set_baz14, only: %i[ show edit update destroy ]

  # GET /baz14s or /baz14s.json
  def index
    @baz14s = Baz14.all
  end

  # GET /baz14s/1 or /baz14s/1.json
  def show
  end

  # GET /baz14s/new
  def new
    @baz14 = Baz14.new
  end

  # GET /baz14s/1/edit
  def edit
  end

  # POST /baz14s or /baz14s.json
  def create
    @baz14 = Baz14.new(baz14_params)

    respond_to do |format|
      if @baz14.save
        format.html { redirect_to @baz14, notice: "Baz14 was successfully created." }
        format.json { render :show, status: :created, location: @baz14 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz14s/1 or /baz14s/1.json
  def update
    respond_to do |format|
      if @baz14.update(baz14_params)
        format.html { redirect_to @baz14, notice: "Baz14 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz14 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz14s/1 or /baz14s/1.json
  def destroy
    @baz14.destroy
    respond_to do |format|
      format.html { redirect_to baz14s_url, notice: "Baz14 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz14
      @baz14 = Baz14.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz14_params
      params.require(:baz14).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
