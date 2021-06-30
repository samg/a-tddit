class Baz45sController < ApplicationController
  before_action :set_baz45, only: %i[ show edit update destroy ]

  # GET /baz45s or /baz45s.json
  def index
    @baz45s = Baz45.all
  end

  # GET /baz45s/1 or /baz45s/1.json
  def show
  end

  # GET /baz45s/new
  def new
    @baz45 = Baz45.new
  end

  # GET /baz45s/1/edit
  def edit
  end

  # POST /baz45s or /baz45s.json
  def create
    @baz45 = Baz45.new(baz45_params)

    respond_to do |format|
      if @baz45.save
        format.html { redirect_to @baz45, notice: "Baz45 was successfully created." }
        format.json { render :show, status: :created, location: @baz45 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz45.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz45s/1 or /baz45s/1.json
  def update
    respond_to do |format|
      if @baz45.update(baz45_params)
        format.html { redirect_to @baz45, notice: "Baz45 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz45 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz45.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz45s/1 or /baz45s/1.json
  def destroy
    @baz45.destroy
    respond_to do |format|
      format.html { redirect_to baz45s_url, notice: "Baz45 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz45
      @baz45 = Baz45.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz45_params
      params.require(:baz45).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
