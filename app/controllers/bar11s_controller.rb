class Bar11sController < ApplicationController
  before_action :set_bar11, only: %i[ show edit update destroy ]

  # GET /bar11s or /bar11s.json
  def index
    @bar11s = Bar11.all
  end

  # GET /bar11s/1 or /bar11s/1.json
  def show
  end

  # GET /bar11s/new
  def new
    @bar11 = Bar11.new
  end

  # GET /bar11s/1/edit
  def edit
  end

  # POST /bar11s or /bar11s.json
  def create
    @bar11 = Bar11.new(bar11_params)

    respond_to do |format|
      if @bar11.save
        format.html { redirect_to @bar11, notice: "Bar11 was successfully created." }
        format.json { render :show, status: :created, location: @bar11 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar11s/1 or /bar11s/1.json
  def update
    respond_to do |format|
      if @bar11.update(bar11_params)
        format.html { redirect_to @bar11, notice: "Bar11 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar11 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar11s/1 or /bar11s/1.json
  def destroy
    @bar11.destroy
    respond_to do |format|
      format.html { redirect_to bar11s_url, notice: "Bar11 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar11
      @bar11 = Bar11.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar11_params
      params.require(:bar11).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
