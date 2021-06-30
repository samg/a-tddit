class Baz73sController < ApplicationController
  before_action :set_baz73, only: %i[ show edit update destroy ]

  # GET /baz73s or /baz73s.json
  def index
    @baz73s = Baz73.all
  end

  # GET /baz73s/1 or /baz73s/1.json
  def show
  end

  # GET /baz73s/new
  def new
    @baz73 = Baz73.new
  end

  # GET /baz73s/1/edit
  def edit
  end

  # POST /baz73s or /baz73s.json
  def create
    @baz73 = Baz73.new(baz73_params)

    respond_to do |format|
      if @baz73.save
        format.html { redirect_to @baz73, notice: "Baz73 was successfully created." }
        format.json { render :show, status: :created, location: @baz73 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz73.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz73s/1 or /baz73s/1.json
  def update
    respond_to do |format|
      if @baz73.update(baz73_params)
        format.html { redirect_to @baz73, notice: "Baz73 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz73 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz73.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz73s/1 or /baz73s/1.json
  def destroy
    @baz73.destroy
    respond_to do |format|
      format.html { redirect_to baz73s_url, notice: "Baz73 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz73
      @baz73 = Baz73.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz73_params
      params.require(:baz73).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
