class Baz30sController < ApplicationController
  before_action :set_baz30, only: %i[ show edit update destroy ]

  # GET /baz30s or /baz30s.json
  def index
    @baz30s = Baz30.all
  end

  # GET /baz30s/1 or /baz30s/1.json
  def show
  end

  # GET /baz30s/new
  def new
    @baz30 = Baz30.new
  end

  # GET /baz30s/1/edit
  def edit
  end

  # POST /baz30s or /baz30s.json
  def create
    @baz30 = Baz30.new(baz30_params)

    respond_to do |format|
      if @baz30.save
        format.html { redirect_to @baz30, notice: "Baz30 was successfully created." }
        format.json { render :show, status: :created, location: @baz30 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz30.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz30s/1 or /baz30s/1.json
  def update
    respond_to do |format|
      if @baz30.update(baz30_params)
        format.html { redirect_to @baz30, notice: "Baz30 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz30 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz30.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz30s/1 or /baz30s/1.json
  def destroy
    @baz30.destroy
    respond_to do |format|
      format.html { redirect_to baz30s_url, notice: "Baz30 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz30
      @baz30 = Baz30.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz30_params
      params.require(:baz30).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
