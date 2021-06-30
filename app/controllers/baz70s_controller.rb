class Baz70sController < ApplicationController
  before_action :set_baz70, only: %i[ show edit update destroy ]

  # GET /baz70s or /baz70s.json
  def index
    @baz70s = Baz70.all
  end

  # GET /baz70s/1 or /baz70s/1.json
  def show
  end

  # GET /baz70s/new
  def new
    @baz70 = Baz70.new
  end

  # GET /baz70s/1/edit
  def edit
  end

  # POST /baz70s or /baz70s.json
  def create
    @baz70 = Baz70.new(baz70_params)

    respond_to do |format|
      if @baz70.save
        format.html { redirect_to @baz70, notice: "Baz70 was successfully created." }
        format.json { render :show, status: :created, location: @baz70 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz70.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz70s/1 or /baz70s/1.json
  def update
    respond_to do |format|
      if @baz70.update(baz70_params)
        format.html { redirect_to @baz70, notice: "Baz70 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz70 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz70.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz70s/1 or /baz70s/1.json
  def destroy
    @baz70.destroy
    respond_to do |format|
      format.html { redirect_to baz70s_url, notice: "Baz70 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz70
      @baz70 = Baz70.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz70_params
      params.require(:baz70).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
