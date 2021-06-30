class Baz93sController < ApplicationController
  before_action :set_baz93, only: %i[ show edit update destroy ]

  # GET /baz93s or /baz93s.json
  def index
    @baz93s = Baz93.all
  end

  # GET /baz93s/1 or /baz93s/1.json
  def show
  end

  # GET /baz93s/new
  def new
    @baz93 = Baz93.new
  end

  # GET /baz93s/1/edit
  def edit
  end

  # POST /baz93s or /baz93s.json
  def create
    @baz93 = Baz93.new(baz93_params)

    respond_to do |format|
      if @baz93.save
        format.html { redirect_to @baz93, notice: "Baz93 was successfully created." }
        format.json { render :show, status: :created, location: @baz93 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz93.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz93s/1 or /baz93s/1.json
  def update
    respond_to do |format|
      if @baz93.update(baz93_params)
        format.html { redirect_to @baz93, notice: "Baz93 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz93 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz93.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz93s/1 or /baz93s/1.json
  def destroy
    @baz93.destroy
    respond_to do |format|
      format.html { redirect_to baz93s_url, notice: "Baz93 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz93
      @baz93 = Baz93.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz93_params
      params.require(:baz93).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
