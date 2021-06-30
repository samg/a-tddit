class Baz34sController < ApplicationController
  before_action :set_baz34, only: %i[ show edit update destroy ]

  # GET /baz34s or /baz34s.json
  def index
    @baz34s = Baz34.all
  end

  # GET /baz34s/1 or /baz34s/1.json
  def show
  end

  # GET /baz34s/new
  def new
    @baz34 = Baz34.new
  end

  # GET /baz34s/1/edit
  def edit
  end

  # POST /baz34s or /baz34s.json
  def create
    @baz34 = Baz34.new(baz34_params)

    respond_to do |format|
      if @baz34.save
        format.html { redirect_to @baz34, notice: "Baz34 was successfully created." }
        format.json { render :show, status: :created, location: @baz34 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz34.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz34s/1 or /baz34s/1.json
  def update
    respond_to do |format|
      if @baz34.update(baz34_params)
        format.html { redirect_to @baz34, notice: "Baz34 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz34 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz34.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz34s/1 or /baz34s/1.json
  def destroy
    @baz34.destroy
    respond_to do |format|
      format.html { redirect_to baz34s_url, notice: "Baz34 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz34
      @baz34 = Baz34.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz34_params
      params.require(:baz34).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
