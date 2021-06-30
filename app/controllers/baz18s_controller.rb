class Baz18sController < ApplicationController
  before_action :set_baz18, only: %i[ show edit update destroy ]

  # GET /baz18s or /baz18s.json
  def index
    @baz18s = Baz18.all
  end

  # GET /baz18s/1 or /baz18s/1.json
  def show
  end

  # GET /baz18s/new
  def new
    @baz18 = Baz18.new
  end

  # GET /baz18s/1/edit
  def edit
  end

  # POST /baz18s or /baz18s.json
  def create
    @baz18 = Baz18.new(baz18_params)

    respond_to do |format|
      if @baz18.save
        format.html { redirect_to @baz18, notice: "Baz18 was successfully created." }
        format.json { render :show, status: :created, location: @baz18 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz18s/1 or /baz18s/1.json
  def update
    respond_to do |format|
      if @baz18.update(baz18_params)
        format.html { redirect_to @baz18, notice: "Baz18 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz18 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz18s/1 or /baz18s/1.json
  def destroy
    @baz18.destroy
    respond_to do |format|
      format.html { redirect_to baz18s_url, notice: "Baz18 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz18
      @baz18 = Baz18.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz18_params
      params.require(:baz18).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
