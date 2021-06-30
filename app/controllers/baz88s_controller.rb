class Baz88sController < ApplicationController
  before_action :set_baz88, only: %i[ show edit update destroy ]

  # GET /baz88s or /baz88s.json
  def index
    @baz88s = Baz88.all
  end

  # GET /baz88s/1 or /baz88s/1.json
  def show
  end

  # GET /baz88s/new
  def new
    @baz88 = Baz88.new
  end

  # GET /baz88s/1/edit
  def edit
  end

  # POST /baz88s or /baz88s.json
  def create
    @baz88 = Baz88.new(baz88_params)

    respond_to do |format|
      if @baz88.save
        format.html { redirect_to @baz88, notice: "Baz88 was successfully created." }
        format.json { render :show, status: :created, location: @baz88 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz88.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz88s/1 or /baz88s/1.json
  def update
    respond_to do |format|
      if @baz88.update(baz88_params)
        format.html { redirect_to @baz88, notice: "Baz88 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz88 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz88.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz88s/1 or /baz88s/1.json
  def destroy
    @baz88.destroy
    respond_to do |format|
      format.html { redirect_to baz88s_url, notice: "Baz88 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz88
      @baz88 = Baz88.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz88_params
      params.require(:baz88).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
