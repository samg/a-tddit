class Baz65sController < ApplicationController
  before_action :set_baz65, only: %i[ show edit update destroy ]

  # GET /baz65s or /baz65s.json
  def index
    @baz65s = Baz65.all
  end

  # GET /baz65s/1 or /baz65s/1.json
  def show
  end

  # GET /baz65s/new
  def new
    @baz65 = Baz65.new
  end

  # GET /baz65s/1/edit
  def edit
  end

  # POST /baz65s or /baz65s.json
  def create
    @baz65 = Baz65.new(baz65_params)

    respond_to do |format|
      if @baz65.save
        format.html { redirect_to @baz65, notice: "Baz65 was successfully created." }
        format.json { render :show, status: :created, location: @baz65 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz65.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz65s/1 or /baz65s/1.json
  def update
    respond_to do |format|
      if @baz65.update(baz65_params)
        format.html { redirect_to @baz65, notice: "Baz65 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz65 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz65.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz65s/1 or /baz65s/1.json
  def destroy
    @baz65.destroy
    respond_to do |format|
      format.html { redirect_to baz65s_url, notice: "Baz65 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz65
      @baz65 = Baz65.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz65_params
      params.require(:baz65).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
