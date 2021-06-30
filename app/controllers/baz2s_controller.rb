class Baz2sController < ApplicationController
  before_action :set_baz2, only: %i[ show edit update destroy ]

  # GET /baz2s or /baz2s.json
  def index
    @baz2s = Baz2.all
  end

  # GET /baz2s/1 or /baz2s/1.json
  def show
  end

  # GET /baz2s/new
  def new
    @baz2 = Baz2.new
  end

  # GET /baz2s/1/edit
  def edit
  end

  # POST /baz2s or /baz2s.json
  def create
    @baz2 = Baz2.new(baz2_params)

    respond_to do |format|
      if @baz2.save
        format.html { redirect_to @baz2, notice: "Baz2 was successfully created." }
        format.json { render :show, status: :created, location: @baz2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz2s/1 or /baz2s/1.json
  def update
    respond_to do |format|
      if @baz2.update(baz2_params)
        format.html { redirect_to @baz2, notice: "Baz2 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz2s/1 or /baz2s/1.json
  def destroy
    @baz2.destroy
    respond_to do |format|
      format.html { redirect_to baz2s_url, notice: "Baz2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz2
      @baz2 = Baz2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz2_params
      params.require(:baz2).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
