class Baz43sController < ApplicationController
  before_action :set_baz43, only: %i[ show edit update destroy ]

  # GET /baz43s or /baz43s.json
  def index
    @baz43s = Baz43.all
  end

  # GET /baz43s/1 or /baz43s/1.json
  def show
  end

  # GET /baz43s/new
  def new
    @baz43 = Baz43.new
  end

  # GET /baz43s/1/edit
  def edit
  end

  # POST /baz43s or /baz43s.json
  def create
    @baz43 = Baz43.new(baz43_params)

    respond_to do |format|
      if @baz43.save
        format.html { redirect_to @baz43, notice: "Baz43 was successfully created." }
        format.json { render :show, status: :created, location: @baz43 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz43.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz43s/1 or /baz43s/1.json
  def update
    respond_to do |format|
      if @baz43.update(baz43_params)
        format.html { redirect_to @baz43, notice: "Baz43 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz43 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz43.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz43s/1 or /baz43s/1.json
  def destroy
    @baz43.destroy
    respond_to do |format|
      format.html { redirect_to baz43s_url, notice: "Baz43 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz43
      @baz43 = Baz43.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz43_params
      params.require(:baz43).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
