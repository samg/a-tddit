class Baz10sController < ApplicationController
  before_action :set_baz10, only: %i[ show edit update destroy ]

  # GET /baz10s or /baz10s.json
  def index
    @baz10s = Baz10.all
  end

  # GET /baz10s/1 or /baz10s/1.json
  def show
  end

  # GET /baz10s/new
  def new
    @baz10 = Baz10.new
  end

  # GET /baz10s/1/edit
  def edit
  end

  # POST /baz10s or /baz10s.json
  def create
    @baz10 = Baz10.new(baz10_params)

    respond_to do |format|
      if @baz10.save
        format.html { redirect_to @baz10, notice: "Baz10 was successfully created." }
        format.json { render :show, status: :created, location: @baz10 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz10s/1 or /baz10s/1.json
  def update
    respond_to do |format|
      if @baz10.update(baz10_params)
        format.html { redirect_to @baz10, notice: "Baz10 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz10 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz10s/1 or /baz10s/1.json
  def destroy
    @baz10.destroy
    respond_to do |format|
      format.html { redirect_to baz10s_url, notice: "Baz10 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz10
      @baz10 = Baz10.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz10_params
      params.require(:baz10).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
