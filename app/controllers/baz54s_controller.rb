class Baz54sController < ApplicationController
  before_action :set_baz54, only: %i[ show edit update destroy ]

  # GET /baz54s or /baz54s.json
  def index
    @baz54s = Baz54.all
  end

  # GET /baz54s/1 or /baz54s/1.json
  def show
  end

  # GET /baz54s/new
  def new
    @baz54 = Baz54.new
  end

  # GET /baz54s/1/edit
  def edit
  end

  # POST /baz54s or /baz54s.json
  def create
    @baz54 = Baz54.new(baz54_params)

    respond_to do |format|
      if @baz54.save
        format.html { redirect_to @baz54, notice: "Baz54 was successfully created." }
        format.json { render :show, status: :created, location: @baz54 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz54.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz54s/1 or /baz54s/1.json
  def update
    respond_to do |format|
      if @baz54.update(baz54_params)
        format.html { redirect_to @baz54, notice: "Baz54 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz54 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz54.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz54s/1 or /baz54s/1.json
  def destroy
    @baz54.destroy
    respond_to do |format|
      format.html { redirect_to baz54s_url, notice: "Baz54 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz54
      @baz54 = Baz54.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz54_params
      params.require(:baz54).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
