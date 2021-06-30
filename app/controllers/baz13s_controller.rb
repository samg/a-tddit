class Baz13sController < ApplicationController
  before_action :set_baz13, only: %i[ show edit update destroy ]

  # GET /baz13s or /baz13s.json
  def index
    @baz13s = Baz13.all
  end

  # GET /baz13s/1 or /baz13s/1.json
  def show
  end

  # GET /baz13s/new
  def new
    @baz13 = Baz13.new
  end

  # GET /baz13s/1/edit
  def edit
  end

  # POST /baz13s or /baz13s.json
  def create
    @baz13 = Baz13.new(baz13_params)

    respond_to do |format|
      if @baz13.save
        format.html { redirect_to @baz13, notice: "Baz13 was successfully created." }
        format.json { render :show, status: :created, location: @baz13 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz13s/1 or /baz13s/1.json
  def update
    respond_to do |format|
      if @baz13.update(baz13_params)
        format.html { redirect_to @baz13, notice: "Baz13 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz13 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz13s/1 or /baz13s/1.json
  def destroy
    @baz13.destroy
    respond_to do |format|
      format.html { redirect_to baz13s_url, notice: "Baz13 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz13
      @baz13 = Baz13.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz13_params
      params.require(:baz13).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
