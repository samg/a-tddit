class Baz15sController < ApplicationController
  before_action :set_baz15, only: %i[ show edit update destroy ]

  # GET /baz15s or /baz15s.json
  def index
    @baz15s = Baz15.all
  end

  # GET /baz15s/1 or /baz15s/1.json
  def show
  end

  # GET /baz15s/new
  def new
    @baz15 = Baz15.new
  end

  # GET /baz15s/1/edit
  def edit
  end

  # POST /baz15s or /baz15s.json
  def create
    @baz15 = Baz15.new(baz15_params)

    respond_to do |format|
      if @baz15.save
        format.html { redirect_to @baz15, notice: "Baz15 was successfully created." }
        format.json { render :show, status: :created, location: @baz15 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz15s/1 or /baz15s/1.json
  def update
    respond_to do |format|
      if @baz15.update(baz15_params)
        format.html { redirect_to @baz15, notice: "Baz15 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz15 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz15s/1 or /baz15s/1.json
  def destroy
    @baz15.destroy
    respond_to do |format|
      format.html { redirect_to baz15s_url, notice: "Baz15 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz15
      @baz15 = Baz15.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz15_params
      params.require(:baz15).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
