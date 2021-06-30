class Baz39sController < ApplicationController
  before_action :set_baz39, only: %i[ show edit update destroy ]

  # GET /baz39s or /baz39s.json
  def index
    @baz39s = Baz39.all
  end

  # GET /baz39s/1 or /baz39s/1.json
  def show
  end

  # GET /baz39s/new
  def new
    @baz39 = Baz39.new
  end

  # GET /baz39s/1/edit
  def edit
  end

  # POST /baz39s or /baz39s.json
  def create
    @baz39 = Baz39.new(baz39_params)

    respond_to do |format|
      if @baz39.save
        format.html { redirect_to @baz39, notice: "Baz39 was successfully created." }
        format.json { render :show, status: :created, location: @baz39 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz39.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz39s/1 or /baz39s/1.json
  def update
    respond_to do |format|
      if @baz39.update(baz39_params)
        format.html { redirect_to @baz39, notice: "Baz39 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz39 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz39.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz39s/1 or /baz39s/1.json
  def destroy
    @baz39.destroy
    respond_to do |format|
      format.html { redirect_to baz39s_url, notice: "Baz39 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz39
      @baz39 = Baz39.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz39_params
      params.require(:baz39).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
