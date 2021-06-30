class Baz31sController < ApplicationController
  before_action :set_baz31, only: %i[ show edit update destroy ]

  # GET /baz31s or /baz31s.json
  def index
    @baz31s = Baz31.all
  end

  # GET /baz31s/1 or /baz31s/1.json
  def show
  end

  # GET /baz31s/new
  def new
    @baz31 = Baz31.new
  end

  # GET /baz31s/1/edit
  def edit
  end

  # POST /baz31s or /baz31s.json
  def create
    @baz31 = Baz31.new(baz31_params)

    respond_to do |format|
      if @baz31.save
        format.html { redirect_to @baz31, notice: "Baz31 was successfully created." }
        format.json { render :show, status: :created, location: @baz31 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz31.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz31s/1 or /baz31s/1.json
  def update
    respond_to do |format|
      if @baz31.update(baz31_params)
        format.html { redirect_to @baz31, notice: "Baz31 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz31 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz31.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz31s/1 or /baz31s/1.json
  def destroy
    @baz31.destroy
    respond_to do |format|
      format.html { redirect_to baz31s_url, notice: "Baz31 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz31
      @baz31 = Baz31.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz31_params
      params.require(:baz31).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
