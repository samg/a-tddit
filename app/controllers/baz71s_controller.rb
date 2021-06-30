class Baz71sController < ApplicationController
  before_action :set_baz71, only: %i[ show edit update destroy ]

  # GET /baz71s or /baz71s.json
  def index
    @baz71s = Baz71.all
  end

  # GET /baz71s/1 or /baz71s/1.json
  def show
  end

  # GET /baz71s/new
  def new
    @baz71 = Baz71.new
  end

  # GET /baz71s/1/edit
  def edit
  end

  # POST /baz71s or /baz71s.json
  def create
    @baz71 = Baz71.new(baz71_params)

    respond_to do |format|
      if @baz71.save
        format.html { redirect_to @baz71, notice: "Baz71 was successfully created." }
        format.json { render :show, status: :created, location: @baz71 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz71.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz71s/1 or /baz71s/1.json
  def update
    respond_to do |format|
      if @baz71.update(baz71_params)
        format.html { redirect_to @baz71, notice: "Baz71 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz71 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz71.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz71s/1 or /baz71s/1.json
  def destroy
    @baz71.destroy
    respond_to do |format|
      format.html { redirect_to baz71s_url, notice: "Baz71 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz71
      @baz71 = Baz71.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz71_params
      params.require(:baz71).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
