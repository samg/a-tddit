class Baz86sController < ApplicationController
  before_action :set_baz86, only: %i[ show edit update destroy ]

  # GET /baz86s or /baz86s.json
  def index
    @baz86s = Baz86.all
  end

  # GET /baz86s/1 or /baz86s/1.json
  def show
  end

  # GET /baz86s/new
  def new
    @baz86 = Baz86.new
  end

  # GET /baz86s/1/edit
  def edit
  end

  # POST /baz86s or /baz86s.json
  def create
    @baz86 = Baz86.new(baz86_params)

    respond_to do |format|
      if @baz86.save
        format.html { redirect_to @baz86, notice: "Baz86 was successfully created." }
        format.json { render :show, status: :created, location: @baz86 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz86.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz86s/1 or /baz86s/1.json
  def update
    respond_to do |format|
      if @baz86.update(baz86_params)
        format.html { redirect_to @baz86, notice: "Baz86 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz86 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz86.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz86s/1 or /baz86s/1.json
  def destroy
    @baz86.destroy
    respond_to do |format|
      format.html { redirect_to baz86s_url, notice: "Baz86 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz86
      @baz86 = Baz86.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz86_params
      params.require(:baz86).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
