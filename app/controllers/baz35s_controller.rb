class Baz35sController < ApplicationController
  before_action :set_baz35, only: %i[ show edit update destroy ]

  # GET /baz35s or /baz35s.json
  def index
    @baz35s = Baz35.all
  end

  # GET /baz35s/1 or /baz35s/1.json
  def show
  end

  # GET /baz35s/new
  def new
    @baz35 = Baz35.new
  end

  # GET /baz35s/1/edit
  def edit
  end

  # POST /baz35s or /baz35s.json
  def create
    @baz35 = Baz35.new(baz35_params)

    respond_to do |format|
      if @baz35.save
        format.html { redirect_to @baz35, notice: "Baz35 was successfully created." }
        format.json { render :show, status: :created, location: @baz35 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz35.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz35s/1 or /baz35s/1.json
  def update
    respond_to do |format|
      if @baz35.update(baz35_params)
        format.html { redirect_to @baz35, notice: "Baz35 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz35 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz35.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz35s/1 or /baz35s/1.json
  def destroy
    @baz35.destroy
    respond_to do |format|
      format.html { redirect_to baz35s_url, notice: "Baz35 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz35
      @baz35 = Baz35.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz35_params
      params.require(:baz35).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
