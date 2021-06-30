class Baz67sController < ApplicationController
  before_action :set_baz67, only: %i[ show edit update destroy ]

  # GET /baz67s or /baz67s.json
  def index
    @baz67s = Baz67.all
  end

  # GET /baz67s/1 or /baz67s/1.json
  def show
  end

  # GET /baz67s/new
  def new
    @baz67 = Baz67.new
  end

  # GET /baz67s/1/edit
  def edit
  end

  # POST /baz67s or /baz67s.json
  def create
    @baz67 = Baz67.new(baz67_params)

    respond_to do |format|
      if @baz67.save
        format.html { redirect_to @baz67, notice: "Baz67 was successfully created." }
        format.json { render :show, status: :created, location: @baz67 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz67.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz67s/1 or /baz67s/1.json
  def update
    respond_to do |format|
      if @baz67.update(baz67_params)
        format.html { redirect_to @baz67, notice: "Baz67 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz67 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz67.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz67s/1 or /baz67s/1.json
  def destroy
    @baz67.destroy
    respond_to do |format|
      format.html { redirect_to baz67s_url, notice: "Baz67 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz67
      @baz67 = Baz67.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz67_params
      params.require(:baz67).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
