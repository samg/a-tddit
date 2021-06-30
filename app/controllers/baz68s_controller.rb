class Baz68sController < ApplicationController
  before_action :set_baz68, only: %i[ show edit update destroy ]

  # GET /baz68s or /baz68s.json
  def index
    @baz68s = Baz68.all
  end

  # GET /baz68s/1 or /baz68s/1.json
  def show
  end

  # GET /baz68s/new
  def new
    @baz68 = Baz68.new
  end

  # GET /baz68s/1/edit
  def edit
  end

  # POST /baz68s or /baz68s.json
  def create
    @baz68 = Baz68.new(baz68_params)

    respond_to do |format|
      if @baz68.save
        format.html { redirect_to @baz68, notice: "Baz68 was successfully created." }
        format.json { render :show, status: :created, location: @baz68 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz68.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz68s/1 or /baz68s/1.json
  def update
    respond_to do |format|
      if @baz68.update(baz68_params)
        format.html { redirect_to @baz68, notice: "Baz68 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz68 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz68.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz68s/1 or /baz68s/1.json
  def destroy
    @baz68.destroy
    respond_to do |format|
      format.html { redirect_to baz68s_url, notice: "Baz68 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz68
      @baz68 = Baz68.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz68_params
      params.require(:baz68).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
