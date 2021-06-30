class Baz6sController < ApplicationController
  before_action :set_baz6, only: %i[ show edit update destroy ]

  # GET /baz6s or /baz6s.json
  def index
    @baz6s = Baz6.all
  end

  # GET /baz6s/1 or /baz6s/1.json
  def show
  end

  # GET /baz6s/new
  def new
    @baz6 = Baz6.new
  end

  # GET /baz6s/1/edit
  def edit
  end

  # POST /baz6s or /baz6s.json
  def create
    @baz6 = Baz6.new(baz6_params)

    respond_to do |format|
      if @baz6.save
        format.html { redirect_to @baz6, notice: "Baz6 was successfully created." }
        format.json { render :show, status: :created, location: @baz6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz6s/1 or /baz6s/1.json
  def update
    respond_to do |format|
      if @baz6.update(baz6_params)
        format.html { redirect_to @baz6, notice: "Baz6 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz6s/1 or /baz6s/1.json
  def destroy
    @baz6.destroy
    respond_to do |format|
      format.html { redirect_to baz6s_url, notice: "Baz6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz6
      @baz6 = Baz6.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz6_params
      params.require(:baz6).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
