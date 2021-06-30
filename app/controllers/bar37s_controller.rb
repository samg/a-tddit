class Bar37sController < ApplicationController
  before_action :set_bar37, only: %i[ show edit update destroy ]

  # GET /bar37s or /bar37s.json
  def index
    @bar37s = Bar37.all
  end

  # GET /bar37s/1 or /bar37s/1.json
  def show
  end

  # GET /bar37s/new
  def new
    @bar37 = Bar37.new
  end

  # GET /bar37s/1/edit
  def edit
  end

  # POST /bar37s or /bar37s.json
  def create
    @bar37 = Bar37.new(bar37_params)

    respond_to do |format|
      if @bar37.save
        format.html { redirect_to @bar37, notice: "Bar37 was successfully created." }
        format.json { render :show, status: :created, location: @bar37 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar37.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar37s/1 or /bar37s/1.json
  def update
    respond_to do |format|
      if @bar37.update(bar37_params)
        format.html { redirect_to @bar37, notice: "Bar37 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar37 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar37.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar37s/1 or /bar37s/1.json
  def destroy
    @bar37.destroy
    respond_to do |format|
      format.html { redirect_to bar37s_url, notice: "Bar37 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar37
      @bar37 = Bar37.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar37_params
      params.require(:bar37).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
