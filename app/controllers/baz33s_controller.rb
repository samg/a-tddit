class Baz33sController < ApplicationController
  before_action :set_baz33, only: %i[ show edit update destroy ]

  # GET /baz33s or /baz33s.json
  def index
    @baz33s = Baz33.all
  end

  # GET /baz33s/1 or /baz33s/1.json
  def show
  end

  # GET /baz33s/new
  def new
    @baz33 = Baz33.new
  end

  # GET /baz33s/1/edit
  def edit
  end

  # POST /baz33s or /baz33s.json
  def create
    @baz33 = Baz33.new(baz33_params)

    respond_to do |format|
      if @baz33.save
        format.html { redirect_to @baz33, notice: "Baz33 was successfully created." }
        format.json { render :show, status: :created, location: @baz33 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz33.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz33s/1 or /baz33s/1.json
  def update
    respond_to do |format|
      if @baz33.update(baz33_params)
        format.html { redirect_to @baz33, notice: "Baz33 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz33 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz33.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz33s/1 or /baz33s/1.json
  def destroy
    @baz33.destroy
    respond_to do |format|
      format.html { redirect_to baz33s_url, notice: "Baz33 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz33
      @baz33 = Baz33.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz33_params
      params.require(:baz33).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
