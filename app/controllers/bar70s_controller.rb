class Bar70sController < ApplicationController
  before_action :set_bar70, only: %i[ show edit update destroy ]

  # GET /bar70s or /bar70s.json
  def index
    @bar70s = Bar70.all
  end

  # GET /bar70s/1 or /bar70s/1.json
  def show
  end

  # GET /bar70s/new
  def new
    @bar70 = Bar70.new
  end

  # GET /bar70s/1/edit
  def edit
  end

  # POST /bar70s or /bar70s.json
  def create
    @bar70 = Bar70.new(bar70_params)

    respond_to do |format|
      if @bar70.save
        format.html { redirect_to @bar70, notice: "Bar70 was successfully created." }
        format.json { render :show, status: :created, location: @bar70 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar70.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar70s/1 or /bar70s/1.json
  def update
    respond_to do |format|
      if @bar70.update(bar70_params)
        format.html { redirect_to @bar70, notice: "Bar70 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar70 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar70.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar70s/1 or /bar70s/1.json
  def destroy
    @bar70.destroy
    respond_to do |format|
      format.html { redirect_to bar70s_url, notice: "Bar70 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar70
      @bar70 = Bar70.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar70_params
      params.require(:bar70).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
