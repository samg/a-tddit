class Baz47sController < ApplicationController
  before_action :set_baz47, only: %i[ show edit update destroy ]

  # GET /baz47s or /baz47s.json
  def index
    @baz47s = Baz47.all
  end

  # GET /baz47s/1 or /baz47s/1.json
  def show
  end

  # GET /baz47s/new
  def new
    @baz47 = Baz47.new
  end

  # GET /baz47s/1/edit
  def edit
  end

  # POST /baz47s or /baz47s.json
  def create
    @baz47 = Baz47.new(baz47_params)

    respond_to do |format|
      if @baz47.save
        format.html { redirect_to @baz47, notice: "Baz47 was successfully created." }
        format.json { render :show, status: :created, location: @baz47 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz47.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz47s/1 or /baz47s/1.json
  def update
    respond_to do |format|
      if @baz47.update(baz47_params)
        format.html { redirect_to @baz47, notice: "Baz47 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz47 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz47.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz47s/1 or /baz47s/1.json
  def destroy
    @baz47.destroy
    respond_to do |format|
      format.html { redirect_to baz47s_url, notice: "Baz47 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz47
      @baz47 = Baz47.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz47_params
      params.require(:baz47).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
