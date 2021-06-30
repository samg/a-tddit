class Baz82sController < ApplicationController
  before_action :set_baz82, only: %i[ show edit update destroy ]

  # GET /baz82s or /baz82s.json
  def index
    @baz82s = Baz82.all
  end

  # GET /baz82s/1 or /baz82s/1.json
  def show
  end

  # GET /baz82s/new
  def new
    @baz82 = Baz82.new
  end

  # GET /baz82s/1/edit
  def edit
  end

  # POST /baz82s or /baz82s.json
  def create
    @baz82 = Baz82.new(baz82_params)

    respond_to do |format|
      if @baz82.save
        format.html { redirect_to @baz82, notice: "Baz82 was successfully created." }
        format.json { render :show, status: :created, location: @baz82 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz82.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz82s/1 or /baz82s/1.json
  def update
    respond_to do |format|
      if @baz82.update(baz82_params)
        format.html { redirect_to @baz82, notice: "Baz82 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz82 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz82.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz82s/1 or /baz82s/1.json
  def destroy
    @baz82.destroy
    respond_to do |format|
      format.html { redirect_to baz82s_url, notice: "Baz82 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz82
      @baz82 = Baz82.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz82_params
      params.require(:baz82).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
