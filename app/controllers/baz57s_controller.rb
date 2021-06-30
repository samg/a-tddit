class Baz57sController < ApplicationController
  before_action :set_baz57, only: %i[ show edit update destroy ]

  # GET /baz57s or /baz57s.json
  def index
    @baz57s = Baz57.all
  end

  # GET /baz57s/1 or /baz57s/1.json
  def show
  end

  # GET /baz57s/new
  def new
    @baz57 = Baz57.new
  end

  # GET /baz57s/1/edit
  def edit
  end

  # POST /baz57s or /baz57s.json
  def create
    @baz57 = Baz57.new(baz57_params)

    respond_to do |format|
      if @baz57.save
        format.html { redirect_to @baz57, notice: "Baz57 was successfully created." }
        format.json { render :show, status: :created, location: @baz57 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz57.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz57s/1 or /baz57s/1.json
  def update
    respond_to do |format|
      if @baz57.update(baz57_params)
        format.html { redirect_to @baz57, notice: "Baz57 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz57 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz57.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz57s/1 or /baz57s/1.json
  def destroy
    @baz57.destroy
    respond_to do |format|
      format.html { redirect_to baz57s_url, notice: "Baz57 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz57
      @baz57 = Baz57.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz57_params
      params.require(:baz57).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
