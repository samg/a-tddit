class Bar36sController < ApplicationController
  before_action :set_bar36, only: %i[ show edit update destroy ]

  # GET /bar36s or /bar36s.json
  def index
    @bar36s = Bar36.all
  end

  # GET /bar36s/1 or /bar36s/1.json
  def show
  end

  # GET /bar36s/new
  def new
    @bar36 = Bar36.new
  end

  # GET /bar36s/1/edit
  def edit
  end

  # POST /bar36s or /bar36s.json
  def create
    @bar36 = Bar36.new(bar36_params)

    respond_to do |format|
      if @bar36.save
        format.html { redirect_to @bar36, notice: "Bar36 was successfully created." }
        format.json { render :show, status: :created, location: @bar36 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar36.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar36s/1 or /bar36s/1.json
  def update
    respond_to do |format|
      if @bar36.update(bar36_params)
        format.html { redirect_to @bar36, notice: "Bar36 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar36 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar36.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar36s/1 or /bar36s/1.json
  def destroy
    @bar36.destroy
    respond_to do |format|
      format.html { redirect_to bar36s_url, notice: "Bar36 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar36
      @bar36 = Bar36.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar36_params
      params.require(:bar36).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
