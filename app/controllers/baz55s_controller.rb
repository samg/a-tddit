class Baz55sController < ApplicationController
  before_action :set_baz55, only: %i[ show edit update destroy ]

  # GET /baz55s or /baz55s.json
  def index
    @baz55s = Baz55.all
  end

  # GET /baz55s/1 or /baz55s/1.json
  def show
  end

  # GET /baz55s/new
  def new
    @baz55 = Baz55.new
  end

  # GET /baz55s/1/edit
  def edit
  end

  # POST /baz55s or /baz55s.json
  def create
    @baz55 = Baz55.new(baz55_params)

    respond_to do |format|
      if @baz55.save
        format.html { redirect_to @baz55, notice: "Baz55 was successfully created." }
        format.json { render :show, status: :created, location: @baz55 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz55.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz55s/1 or /baz55s/1.json
  def update
    respond_to do |format|
      if @baz55.update(baz55_params)
        format.html { redirect_to @baz55, notice: "Baz55 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz55 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz55.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz55s/1 or /baz55s/1.json
  def destroy
    @baz55.destroy
    respond_to do |format|
      format.html { redirect_to baz55s_url, notice: "Baz55 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz55
      @baz55 = Baz55.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz55_params
      params.require(:baz55).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
