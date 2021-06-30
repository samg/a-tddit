class Baz56sController < ApplicationController
  before_action :set_baz56, only: %i[ show edit update destroy ]

  # GET /baz56s or /baz56s.json
  def index
    @baz56s = Baz56.all
  end

  # GET /baz56s/1 or /baz56s/1.json
  def show
  end

  # GET /baz56s/new
  def new
    @baz56 = Baz56.new
  end

  # GET /baz56s/1/edit
  def edit
  end

  # POST /baz56s or /baz56s.json
  def create
    @baz56 = Baz56.new(baz56_params)

    respond_to do |format|
      if @baz56.save
        format.html { redirect_to @baz56, notice: "Baz56 was successfully created." }
        format.json { render :show, status: :created, location: @baz56 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz56.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz56s/1 or /baz56s/1.json
  def update
    respond_to do |format|
      if @baz56.update(baz56_params)
        format.html { redirect_to @baz56, notice: "Baz56 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz56 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz56.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz56s/1 or /baz56s/1.json
  def destroy
    @baz56.destroy
    respond_to do |format|
      format.html { redirect_to baz56s_url, notice: "Baz56 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz56
      @baz56 = Baz56.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz56_params
      params.require(:baz56).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
