class Baz83sController < ApplicationController
  before_action :set_baz83, only: %i[ show edit update destroy ]

  # GET /baz83s or /baz83s.json
  def index
    @baz83s = Baz83.all
  end

  # GET /baz83s/1 or /baz83s/1.json
  def show
  end

  # GET /baz83s/new
  def new
    @baz83 = Baz83.new
  end

  # GET /baz83s/1/edit
  def edit
  end

  # POST /baz83s or /baz83s.json
  def create
    @baz83 = Baz83.new(baz83_params)

    respond_to do |format|
      if @baz83.save
        format.html { redirect_to @baz83, notice: "Baz83 was successfully created." }
        format.json { render :show, status: :created, location: @baz83 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz83.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz83s/1 or /baz83s/1.json
  def update
    respond_to do |format|
      if @baz83.update(baz83_params)
        format.html { redirect_to @baz83, notice: "Baz83 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz83 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz83.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz83s/1 or /baz83s/1.json
  def destroy
    @baz83.destroy
    respond_to do |format|
      format.html { redirect_to baz83s_url, notice: "Baz83 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz83
      @baz83 = Baz83.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz83_params
      params.require(:baz83).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
