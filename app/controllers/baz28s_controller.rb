class Baz28sController < ApplicationController
  before_action :set_baz28, only: %i[ show edit update destroy ]

  # GET /baz28s or /baz28s.json
  def index
    @baz28s = Baz28.all
  end

  # GET /baz28s/1 or /baz28s/1.json
  def show
  end

  # GET /baz28s/new
  def new
    @baz28 = Baz28.new
  end

  # GET /baz28s/1/edit
  def edit
  end

  # POST /baz28s or /baz28s.json
  def create
    @baz28 = Baz28.new(baz28_params)

    respond_to do |format|
      if @baz28.save
        format.html { redirect_to @baz28, notice: "Baz28 was successfully created." }
        format.json { render :show, status: :created, location: @baz28 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz28.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz28s/1 or /baz28s/1.json
  def update
    respond_to do |format|
      if @baz28.update(baz28_params)
        format.html { redirect_to @baz28, notice: "Baz28 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz28 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz28.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz28s/1 or /baz28s/1.json
  def destroy
    @baz28.destroy
    respond_to do |format|
      format.html { redirect_to baz28s_url, notice: "Baz28 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz28
      @baz28 = Baz28.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz28_params
      params.require(:baz28).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
