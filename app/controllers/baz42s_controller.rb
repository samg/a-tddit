class Baz42sController < ApplicationController
  before_action :set_baz42, only: %i[ show edit update destroy ]

  # GET /baz42s or /baz42s.json
  def index
    @baz42s = Baz42.all
  end

  # GET /baz42s/1 or /baz42s/1.json
  def show
  end

  # GET /baz42s/new
  def new
    @baz42 = Baz42.new
  end

  # GET /baz42s/1/edit
  def edit
  end

  # POST /baz42s or /baz42s.json
  def create
    @baz42 = Baz42.new(baz42_params)

    respond_to do |format|
      if @baz42.save
        format.html { redirect_to @baz42, notice: "Baz42 was successfully created." }
        format.json { render :show, status: :created, location: @baz42 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz42.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz42s/1 or /baz42s/1.json
  def update
    respond_to do |format|
      if @baz42.update(baz42_params)
        format.html { redirect_to @baz42, notice: "Baz42 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz42 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz42.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz42s/1 or /baz42s/1.json
  def destroy
    @baz42.destroy
    respond_to do |format|
      format.html { redirect_to baz42s_url, notice: "Baz42 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz42
      @baz42 = Baz42.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz42_params
      params.require(:baz42).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
