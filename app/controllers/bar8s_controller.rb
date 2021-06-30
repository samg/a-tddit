class Bar8sController < ApplicationController
  before_action :set_bar8, only: %i[ show edit update destroy ]

  # GET /bar8s or /bar8s.json
  def index
    @bar8s = Bar8.all
  end

  # GET /bar8s/1 or /bar8s/1.json
  def show
  end

  # GET /bar8s/new
  def new
    @bar8 = Bar8.new
  end

  # GET /bar8s/1/edit
  def edit
  end

  # POST /bar8s or /bar8s.json
  def create
    @bar8 = Bar8.new(bar8_params)

    respond_to do |format|
      if @bar8.save
        format.html { redirect_to @bar8, notice: "Bar8 was successfully created." }
        format.json { render :show, status: :created, location: @bar8 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar8s/1 or /bar8s/1.json
  def update
    respond_to do |format|
      if @bar8.update(bar8_params)
        format.html { redirect_to @bar8, notice: "Bar8 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar8 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar8s/1 or /bar8s/1.json
  def destroy
    @bar8.destroy
    respond_to do |format|
      format.html { redirect_to bar8s_url, notice: "Bar8 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar8
      @bar8 = Bar8.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar8_params
      params.require(:bar8).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
