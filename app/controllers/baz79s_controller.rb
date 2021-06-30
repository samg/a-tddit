class Baz79sController < ApplicationController
  before_action :set_baz79, only: %i[ show edit update destroy ]

  # GET /baz79s or /baz79s.json
  def index
    @baz79s = Baz79.all
  end

  # GET /baz79s/1 or /baz79s/1.json
  def show
  end

  # GET /baz79s/new
  def new
    @baz79 = Baz79.new
  end

  # GET /baz79s/1/edit
  def edit
  end

  # POST /baz79s or /baz79s.json
  def create
    @baz79 = Baz79.new(baz79_params)

    respond_to do |format|
      if @baz79.save
        format.html { redirect_to @baz79, notice: "Baz79 was successfully created." }
        format.json { render :show, status: :created, location: @baz79 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz79.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz79s/1 or /baz79s/1.json
  def update
    respond_to do |format|
      if @baz79.update(baz79_params)
        format.html { redirect_to @baz79, notice: "Baz79 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz79 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz79.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz79s/1 or /baz79s/1.json
  def destroy
    @baz79.destroy
    respond_to do |format|
      format.html { redirect_to baz79s_url, notice: "Baz79 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz79
      @baz79 = Baz79.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz79_params
      params.require(:baz79).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
