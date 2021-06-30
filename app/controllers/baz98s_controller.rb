class Baz98sController < ApplicationController
  before_action :set_baz98, only: %i[ show edit update destroy ]

  # GET /baz98s or /baz98s.json
  def index
    @baz98s = Baz98.all
  end

  # GET /baz98s/1 or /baz98s/1.json
  def show
  end

  # GET /baz98s/new
  def new
    @baz98 = Baz98.new
  end

  # GET /baz98s/1/edit
  def edit
  end

  # POST /baz98s or /baz98s.json
  def create
    @baz98 = Baz98.new(baz98_params)

    respond_to do |format|
      if @baz98.save
        format.html { redirect_to @baz98, notice: "Baz98 was successfully created." }
        format.json { render :show, status: :created, location: @baz98 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz98.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz98s/1 or /baz98s/1.json
  def update
    respond_to do |format|
      if @baz98.update(baz98_params)
        format.html { redirect_to @baz98, notice: "Baz98 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz98 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz98.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz98s/1 or /baz98s/1.json
  def destroy
    @baz98.destroy
    respond_to do |format|
      format.html { redirect_to baz98s_url, notice: "Baz98 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz98
      @baz98 = Baz98.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz98_params
      params.require(:baz98).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
