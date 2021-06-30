class Baz85sController < ApplicationController
  before_action :set_baz85, only: %i[ show edit update destroy ]

  # GET /baz85s or /baz85s.json
  def index
    @baz85s = Baz85.all
  end

  # GET /baz85s/1 or /baz85s/1.json
  def show
  end

  # GET /baz85s/new
  def new
    @baz85 = Baz85.new
  end

  # GET /baz85s/1/edit
  def edit
  end

  # POST /baz85s or /baz85s.json
  def create
    @baz85 = Baz85.new(baz85_params)

    respond_to do |format|
      if @baz85.save
        format.html { redirect_to @baz85, notice: "Baz85 was successfully created." }
        format.json { render :show, status: :created, location: @baz85 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz85.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz85s/1 or /baz85s/1.json
  def update
    respond_to do |format|
      if @baz85.update(baz85_params)
        format.html { redirect_to @baz85, notice: "Baz85 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz85 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz85.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz85s/1 or /baz85s/1.json
  def destroy
    @baz85.destroy
    respond_to do |format|
      format.html { redirect_to baz85s_url, notice: "Baz85 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz85
      @baz85 = Baz85.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz85_params
      params.require(:baz85).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
