class Baz17sController < ApplicationController
  before_action :set_baz17, only: %i[ show edit update destroy ]

  # GET /baz17s or /baz17s.json
  def index
    @baz17s = Baz17.all
  end

  # GET /baz17s/1 or /baz17s/1.json
  def show
  end

  # GET /baz17s/new
  def new
    @baz17 = Baz17.new
  end

  # GET /baz17s/1/edit
  def edit
  end

  # POST /baz17s or /baz17s.json
  def create
    @baz17 = Baz17.new(baz17_params)

    respond_to do |format|
      if @baz17.save
        format.html { redirect_to @baz17, notice: "Baz17 was successfully created." }
        format.json { render :show, status: :created, location: @baz17 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz17s/1 or /baz17s/1.json
  def update
    respond_to do |format|
      if @baz17.update(baz17_params)
        format.html { redirect_to @baz17, notice: "Baz17 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz17 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz17s/1 or /baz17s/1.json
  def destroy
    @baz17.destroy
    respond_to do |format|
      format.html { redirect_to baz17s_url, notice: "Baz17 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz17
      @baz17 = Baz17.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz17_params
      params.require(:baz17).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
