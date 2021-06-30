class Bar40sController < ApplicationController
  before_action :set_bar40, only: %i[ show edit update destroy ]

  # GET /bar40s or /bar40s.json
  def index
    @bar40s = Bar40.all
  end

  # GET /bar40s/1 or /bar40s/1.json
  def show
  end

  # GET /bar40s/new
  def new
    @bar40 = Bar40.new
  end

  # GET /bar40s/1/edit
  def edit
  end

  # POST /bar40s or /bar40s.json
  def create
    @bar40 = Bar40.new(bar40_params)

    respond_to do |format|
      if @bar40.save
        format.html { redirect_to @bar40, notice: "Bar40 was successfully created." }
        format.json { render :show, status: :created, location: @bar40 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar40.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar40s/1 or /bar40s/1.json
  def update
    respond_to do |format|
      if @bar40.update(bar40_params)
        format.html { redirect_to @bar40, notice: "Bar40 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar40 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar40.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar40s/1 or /bar40s/1.json
  def destroy
    @bar40.destroy
    respond_to do |format|
      format.html { redirect_to bar40s_url, notice: "Bar40 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar40
      @bar40 = Bar40.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar40_params
      params.require(:bar40).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
