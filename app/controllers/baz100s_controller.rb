class Baz100sController < ApplicationController
  before_action :set_baz100, only: %i[ show edit update destroy ]

  # GET /baz100s or /baz100s.json
  def index
    @baz100s = Baz100.all
  end

  # GET /baz100s/1 or /baz100s/1.json
  def show
  end

  # GET /baz100s/new
  def new
    @baz100 = Baz100.new
  end

  # GET /baz100s/1/edit
  def edit
  end

  # POST /baz100s or /baz100s.json
  def create
    @baz100 = Baz100.new(baz100_params)

    respond_to do |format|
      if @baz100.save
        format.html { redirect_to @baz100, notice: "Baz100 was successfully created." }
        format.json { render :show, status: :created, location: @baz100 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz100.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz100s/1 or /baz100s/1.json
  def update
    respond_to do |format|
      if @baz100.update(baz100_params)
        format.html { redirect_to @baz100, notice: "Baz100 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz100 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz100.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz100s/1 or /baz100s/1.json
  def destroy
    @baz100.destroy
    respond_to do |format|
      format.html { redirect_to baz100s_url, notice: "Baz100 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz100
      @baz100 = Baz100.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz100_params
      params.require(:baz100).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
