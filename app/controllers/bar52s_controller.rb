class Bar52sController < ApplicationController
  before_action :set_bar52, only: %i[ show edit update destroy ]

  # GET /bar52s or /bar52s.json
  def index
    @bar52s = Bar52.all
  end

  # GET /bar52s/1 or /bar52s/1.json
  def show
  end

  # GET /bar52s/new
  def new
    @bar52 = Bar52.new
  end

  # GET /bar52s/1/edit
  def edit
  end

  # POST /bar52s or /bar52s.json
  def create
    @bar52 = Bar52.new(bar52_params)

    respond_to do |format|
      if @bar52.save
        format.html { redirect_to @bar52, notice: "Bar52 was successfully created." }
        format.json { render :show, status: :created, location: @bar52 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar52.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar52s/1 or /bar52s/1.json
  def update
    respond_to do |format|
      if @bar52.update(bar52_params)
        format.html { redirect_to @bar52, notice: "Bar52 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar52 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar52.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar52s/1 or /bar52s/1.json
  def destroy
    @bar52.destroy
    respond_to do |format|
      format.html { redirect_to bar52s_url, notice: "Bar52 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar52
      @bar52 = Bar52.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar52_params
      params.require(:bar52).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
