class Baz36sController < ApplicationController
  before_action :set_baz36, only: %i[ show edit update destroy ]

  # GET /baz36s or /baz36s.json
  def index
    @baz36s = Baz36.all
  end

  # GET /baz36s/1 or /baz36s/1.json
  def show
  end

  # GET /baz36s/new
  def new
    @baz36 = Baz36.new
  end

  # GET /baz36s/1/edit
  def edit
  end

  # POST /baz36s or /baz36s.json
  def create
    @baz36 = Baz36.new(baz36_params)

    respond_to do |format|
      if @baz36.save
        format.html { redirect_to @baz36, notice: "Baz36 was successfully created." }
        format.json { render :show, status: :created, location: @baz36 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz36.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz36s/1 or /baz36s/1.json
  def update
    respond_to do |format|
      if @baz36.update(baz36_params)
        format.html { redirect_to @baz36, notice: "Baz36 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz36 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz36.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz36s/1 or /baz36s/1.json
  def destroy
    @baz36.destroy
    respond_to do |format|
      format.html { redirect_to baz36s_url, notice: "Baz36 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz36
      @baz36 = Baz36.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz36_params
      params.require(:baz36).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
