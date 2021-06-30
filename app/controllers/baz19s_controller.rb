class Baz19sController < ApplicationController
  before_action :set_baz19, only: %i[ show edit update destroy ]

  # GET /baz19s or /baz19s.json
  def index
    @baz19s = Baz19.all
  end

  # GET /baz19s/1 or /baz19s/1.json
  def show
  end

  # GET /baz19s/new
  def new
    @baz19 = Baz19.new
  end

  # GET /baz19s/1/edit
  def edit
  end

  # POST /baz19s or /baz19s.json
  def create
    @baz19 = Baz19.new(baz19_params)

    respond_to do |format|
      if @baz19.save
        format.html { redirect_to @baz19, notice: "Baz19 was successfully created." }
        format.json { render :show, status: :created, location: @baz19 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz19s/1 or /baz19s/1.json
  def update
    respond_to do |format|
      if @baz19.update(baz19_params)
        format.html { redirect_to @baz19, notice: "Baz19 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz19 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz19s/1 or /baz19s/1.json
  def destroy
    @baz19.destroy
    respond_to do |format|
      format.html { redirect_to baz19s_url, notice: "Baz19 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz19
      @baz19 = Baz19.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz19_params
      params.require(:baz19).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
