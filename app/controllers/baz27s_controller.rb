class Baz27sController < ApplicationController
  before_action :set_baz27, only: %i[ show edit update destroy ]

  # GET /baz27s or /baz27s.json
  def index
    @baz27s = Baz27.all
  end

  # GET /baz27s/1 or /baz27s/1.json
  def show
  end

  # GET /baz27s/new
  def new
    @baz27 = Baz27.new
  end

  # GET /baz27s/1/edit
  def edit
  end

  # POST /baz27s or /baz27s.json
  def create
    @baz27 = Baz27.new(baz27_params)

    respond_to do |format|
      if @baz27.save
        format.html { redirect_to @baz27, notice: "Baz27 was successfully created." }
        format.json { render :show, status: :created, location: @baz27 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz27.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz27s/1 or /baz27s/1.json
  def update
    respond_to do |format|
      if @baz27.update(baz27_params)
        format.html { redirect_to @baz27, notice: "Baz27 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz27 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz27.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz27s/1 or /baz27s/1.json
  def destroy
    @baz27.destroy
    respond_to do |format|
      format.html { redirect_to baz27s_url, notice: "Baz27 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz27
      @baz27 = Baz27.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz27_params
      params.require(:baz27).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
