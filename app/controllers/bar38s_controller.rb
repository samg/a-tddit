class Bar38sController < ApplicationController
  before_action :set_bar38, only: %i[ show edit update destroy ]

  # GET /bar38s or /bar38s.json
  def index
    @bar38s = Bar38.all
  end

  # GET /bar38s/1 or /bar38s/1.json
  def show
  end

  # GET /bar38s/new
  def new
    @bar38 = Bar38.new
  end

  # GET /bar38s/1/edit
  def edit
  end

  # POST /bar38s or /bar38s.json
  def create
    @bar38 = Bar38.new(bar38_params)

    respond_to do |format|
      if @bar38.save
        format.html { redirect_to @bar38, notice: "Bar38 was successfully created." }
        format.json { render :show, status: :created, location: @bar38 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar38.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar38s/1 or /bar38s/1.json
  def update
    respond_to do |format|
      if @bar38.update(bar38_params)
        format.html { redirect_to @bar38, notice: "Bar38 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar38 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar38.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar38s/1 or /bar38s/1.json
  def destroy
    @bar38.destroy
    respond_to do |format|
      format.html { redirect_to bar38s_url, notice: "Bar38 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar38
      @bar38 = Bar38.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar38_params
      params.require(:bar38).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
