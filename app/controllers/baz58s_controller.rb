class Baz58sController < ApplicationController
  before_action :set_baz58, only: %i[ show edit update destroy ]

  # GET /baz58s or /baz58s.json
  def index
    @baz58s = Baz58.all
  end

  # GET /baz58s/1 or /baz58s/1.json
  def show
  end

  # GET /baz58s/new
  def new
    @baz58 = Baz58.new
  end

  # GET /baz58s/1/edit
  def edit
  end

  # POST /baz58s or /baz58s.json
  def create
    @baz58 = Baz58.new(baz58_params)

    respond_to do |format|
      if @baz58.save
        format.html { redirect_to @baz58, notice: "Baz58 was successfully created." }
        format.json { render :show, status: :created, location: @baz58 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz58.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz58s/1 or /baz58s/1.json
  def update
    respond_to do |format|
      if @baz58.update(baz58_params)
        format.html { redirect_to @baz58, notice: "Baz58 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz58 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz58.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz58s/1 or /baz58s/1.json
  def destroy
    @baz58.destroy
    respond_to do |format|
      format.html { redirect_to baz58s_url, notice: "Baz58 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz58
      @baz58 = Baz58.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz58_params
      params.require(:baz58).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
