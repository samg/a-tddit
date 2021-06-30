class Bar67sController < ApplicationController
  before_action :set_bar67, only: %i[ show edit update destroy ]

  # GET /bar67s or /bar67s.json
  def index
    @bar67s = Bar67.all
  end

  # GET /bar67s/1 or /bar67s/1.json
  def show
  end

  # GET /bar67s/new
  def new
    @bar67 = Bar67.new
  end

  # GET /bar67s/1/edit
  def edit
  end

  # POST /bar67s or /bar67s.json
  def create
    @bar67 = Bar67.new(bar67_params)

    respond_to do |format|
      if @bar67.save
        format.html { redirect_to @bar67, notice: "Bar67 was successfully created." }
        format.json { render :show, status: :created, location: @bar67 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar67.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar67s/1 or /bar67s/1.json
  def update
    respond_to do |format|
      if @bar67.update(bar67_params)
        format.html { redirect_to @bar67, notice: "Bar67 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar67 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar67.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar67s/1 or /bar67s/1.json
  def destroy
    @bar67.destroy
    respond_to do |format|
      format.html { redirect_to bar67s_url, notice: "Bar67 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar67
      @bar67 = Bar67.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar67_params
      params.require(:bar67).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
