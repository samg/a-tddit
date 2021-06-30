class Baz61sController < ApplicationController
  before_action :set_baz61, only: %i[ show edit update destroy ]

  # GET /baz61s or /baz61s.json
  def index
    @baz61s = Baz61.all
  end

  # GET /baz61s/1 or /baz61s/1.json
  def show
  end

  # GET /baz61s/new
  def new
    @baz61 = Baz61.new
  end

  # GET /baz61s/1/edit
  def edit
  end

  # POST /baz61s or /baz61s.json
  def create
    @baz61 = Baz61.new(baz61_params)

    respond_to do |format|
      if @baz61.save
        format.html { redirect_to @baz61, notice: "Baz61 was successfully created." }
        format.json { render :show, status: :created, location: @baz61 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz61.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz61s/1 or /baz61s/1.json
  def update
    respond_to do |format|
      if @baz61.update(baz61_params)
        format.html { redirect_to @baz61, notice: "Baz61 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz61 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz61.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz61s/1 or /baz61s/1.json
  def destroy
    @baz61.destroy
    respond_to do |format|
      format.html { redirect_to baz61s_url, notice: "Baz61 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz61
      @baz61 = Baz61.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz61_params
      params.require(:baz61).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
