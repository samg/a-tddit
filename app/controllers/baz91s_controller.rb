class Baz91sController < ApplicationController
  before_action :set_baz91, only: %i[ show edit update destroy ]

  # GET /baz91s or /baz91s.json
  def index
    @baz91s = Baz91.all
  end

  # GET /baz91s/1 or /baz91s/1.json
  def show
  end

  # GET /baz91s/new
  def new
    @baz91 = Baz91.new
  end

  # GET /baz91s/1/edit
  def edit
  end

  # POST /baz91s or /baz91s.json
  def create
    @baz91 = Baz91.new(baz91_params)

    respond_to do |format|
      if @baz91.save
        format.html { redirect_to @baz91, notice: "Baz91 was successfully created." }
        format.json { render :show, status: :created, location: @baz91 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz91.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz91s/1 or /baz91s/1.json
  def update
    respond_to do |format|
      if @baz91.update(baz91_params)
        format.html { redirect_to @baz91, notice: "Baz91 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz91 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz91.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz91s/1 or /baz91s/1.json
  def destroy
    @baz91.destroy
    respond_to do |format|
      format.html { redirect_to baz91s_url, notice: "Baz91 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz91
      @baz91 = Baz91.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz91_params
      params.require(:baz91).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
