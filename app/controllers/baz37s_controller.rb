class Baz37sController < ApplicationController
  before_action :set_baz37, only: %i[ show edit update destroy ]

  # GET /baz37s or /baz37s.json
  def index
    @baz37s = Baz37.all
  end

  # GET /baz37s/1 or /baz37s/1.json
  def show
  end

  # GET /baz37s/new
  def new
    @baz37 = Baz37.new
  end

  # GET /baz37s/1/edit
  def edit
  end

  # POST /baz37s or /baz37s.json
  def create
    @baz37 = Baz37.new(baz37_params)

    respond_to do |format|
      if @baz37.save
        format.html { redirect_to @baz37, notice: "Baz37 was successfully created." }
        format.json { render :show, status: :created, location: @baz37 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz37.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz37s/1 or /baz37s/1.json
  def update
    respond_to do |format|
      if @baz37.update(baz37_params)
        format.html { redirect_to @baz37, notice: "Baz37 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz37 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz37.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz37s/1 or /baz37s/1.json
  def destroy
    @baz37.destroy
    respond_to do |format|
      format.html { redirect_to baz37s_url, notice: "Baz37 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz37
      @baz37 = Baz37.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz37_params
      params.require(:baz37).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
