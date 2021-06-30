class Baz89sController < ApplicationController
  before_action :set_baz89, only: %i[ show edit update destroy ]

  # GET /baz89s or /baz89s.json
  def index
    @baz89s = Baz89.all
  end

  # GET /baz89s/1 or /baz89s/1.json
  def show
  end

  # GET /baz89s/new
  def new
    @baz89 = Baz89.new
  end

  # GET /baz89s/1/edit
  def edit
  end

  # POST /baz89s or /baz89s.json
  def create
    @baz89 = Baz89.new(baz89_params)

    respond_to do |format|
      if @baz89.save
        format.html { redirect_to @baz89, notice: "Baz89 was successfully created." }
        format.json { render :show, status: :created, location: @baz89 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz89.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz89s/1 or /baz89s/1.json
  def update
    respond_to do |format|
      if @baz89.update(baz89_params)
        format.html { redirect_to @baz89, notice: "Baz89 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz89 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz89.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz89s/1 or /baz89s/1.json
  def destroy
    @baz89.destroy
    respond_to do |format|
      format.html { redirect_to baz89s_url, notice: "Baz89 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz89
      @baz89 = Baz89.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz89_params
      params.require(:baz89).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
