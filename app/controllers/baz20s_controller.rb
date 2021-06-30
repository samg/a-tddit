class Baz20sController < ApplicationController
  before_action :set_baz20, only: %i[ show edit update destroy ]

  # GET /baz20s or /baz20s.json
  def index
    @baz20s = Baz20.all
  end

  # GET /baz20s/1 or /baz20s/1.json
  def show
  end

  # GET /baz20s/new
  def new
    @baz20 = Baz20.new
  end

  # GET /baz20s/1/edit
  def edit
  end

  # POST /baz20s or /baz20s.json
  def create
    @baz20 = Baz20.new(baz20_params)

    respond_to do |format|
      if @baz20.save
        format.html { redirect_to @baz20, notice: "Baz20 was successfully created." }
        format.json { render :show, status: :created, location: @baz20 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz20s/1 or /baz20s/1.json
  def update
    respond_to do |format|
      if @baz20.update(baz20_params)
        format.html { redirect_to @baz20, notice: "Baz20 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz20 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz20s/1 or /baz20s/1.json
  def destroy
    @baz20.destroy
    respond_to do |format|
      format.html { redirect_to baz20s_url, notice: "Baz20 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz20
      @baz20 = Baz20.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz20_params
      params.require(:baz20).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
