class Baz69sController < ApplicationController
  before_action :set_baz69, only: %i[ show edit update destroy ]

  # GET /baz69s or /baz69s.json
  def index
    @baz69s = Baz69.all
  end

  # GET /baz69s/1 or /baz69s/1.json
  def show
  end

  # GET /baz69s/new
  def new
    @baz69 = Baz69.new
  end

  # GET /baz69s/1/edit
  def edit
  end

  # POST /baz69s or /baz69s.json
  def create
    @baz69 = Baz69.new(baz69_params)

    respond_to do |format|
      if @baz69.save
        format.html { redirect_to @baz69, notice: "Baz69 was successfully created." }
        format.json { render :show, status: :created, location: @baz69 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz69.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz69s/1 or /baz69s/1.json
  def update
    respond_to do |format|
      if @baz69.update(baz69_params)
        format.html { redirect_to @baz69, notice: "Baz69 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz69 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz69.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz69s/1 or /baz69s/1.json
  def destroy
    @baz69.destroy
    respond_to do |format|
      format.html { redirect_to baz69s_url, notice: "Baz69 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz69
      @baz69 = Baz69.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz69_params
      params.require(:baz69).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
