class Baz9sController < ApplicationController
  before_action :set_baz9, only: %i[ show edit update destroy ]

  # GET /baz9s or /baz9s.json
  def index
    @baz9s = Baz9.all
  end

  # GET /baz9s/1 or /baz9s/1.json
  def show
  end

  # GET /baz9s/new
  def new
    @baz9 = Baz9.new
  end

  # GET /baz9s/1/edit
  def edit
  end

  # POST /baz9s or /baz9s.json
  def create
    @baz9 = Baz9.new(baz9_params)

    respond_to do |format|
      if @baz9.save
        format.html { redirect_to @baz9, notice: "Baz9 was successfully created." }
        format.json { render :show, status: :created, location: @baz9 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz9s/1 or /baz9s/1.json
  def update
    respond_to do |format|
      if @baz9.update(baz9_params)
        format.html { redirect_to @baz9, notice: "Baz9 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz9 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz9s/1 or /baz9s/1.json
  def destroy
    @baz9.destroy
    respond_to do |format|
      format.html { redirect_to baz9s_url, notice: "Baz9 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz9
      @baz9 = Baz9.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz9_params
      params.require(:baz9).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
