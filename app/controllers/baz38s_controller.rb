class Baz38sController < ApplicationController
  before_action :set_baz38, only: %i[ show edit update destroy ]

  # GET /baz38s or /baz38s.json
  def index
    @baz38s = Baz38.all
  end

  # GET /baz38s/1 or /baz38s/1.json
  def show
  end

  # GET /baz38s/new
  def new
    @baz38 = Baz38.new
  end

  # GET /baz38s/1/edit
  def edit
  end

  # POST /baz38s or /baz38s.json
  def create
    @baz38 = Baz38.new(baz38_params)

    respond_to do |format|
      if @baz38.save
        format.html { redirect_to @baz38, notice: "Baz38 was successfully created." }
        format.json { render :show, status: :created, location: @baz38 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz38.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz38s/1 or /baz38s/1.json
  def update
    respond_to do |format|
      if @baz38.update(baz38_params)
        format.html { redirect_to @baz38, notice: "Baz38 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz38 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz38.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz38s/1 or /baz38s/1.json
  def destroy
    @baz38.destroy
    respond_to do |format|
      format.html { redirect_to baz38s_url, notice: "Baz38 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz38
      @baz38 = Baz38.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz38_params
      params.require(:baz38).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
