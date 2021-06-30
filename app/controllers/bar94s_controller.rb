class Bar94sController < ApplicationController
  before_action :set_bar94, only: %i[ show edit update destroy ]

  # GET /bar94s or /bar94s.json
  def index
    @bar94s = Bar94.all
  end

  # GET /bar94s/1 or /bar94s/1.json
  def show
  end

  # GET /bar94s/new
  def new
    @bar94 = Bar94.new
  end

  # GET /bar94s/1/edit
  def edit
  end

  # POST /bar94s or /bar94s.json
  def create
    @bar94 = Bar94.new(bar94_params)

    respond_to do |format|
      if @bar94.save
        format.html { redirect_to @bar94, notice: "Bar94 was successfully created." }
        format.json { render :show, status: :created, location: @bar94 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar94.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar94s/1 or /bar94s/1.json
  def update
    respond_to do |format|
      if @bar94.update(bar94_params)
        format.html { redirect_to @bar94, notice: "Bar94 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar94 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar94.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar94s/1 or /bar94s/1.json
  def destroy
    @bar94.destroy
    respond_to do |format|
      format.html { redirect_to bar94s_url, notice: "Bar94 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar94
      @bar94 = Bar94.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar94_params
      params.require(:bar94).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
