class Bar73sController < ApplicationController
  before_action :set_bar73, only: %i[ show edit update destroy ]

  # GET /bar73s or /bar73s.json
  def index
    @bar73s = Bar73.all
  end

  # GET /bar73s/1 or /bar73s/1.json
  def show
  end

  # GET /bar73s/new
  def new
    @bar73 = Bar73.new
  end

  # GET /bar73s/1/edit
  def edit
  end

  # POST /bar73s or /bar73s.json
  def create
    @bar73 = Bar73.new(bar73_params)

    respond_to do |format|
      if @bar73.save
        format.html { redirect_to @bar73, notice: "Bar73 was successfully created." }
        format.json { render :show, status: :created, location: @bar73 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar73.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar73s/1 or /bar73s/1.json
  def update
    respond_to do |format|
      if @bar73.update(bar73_params)
        format.html { redirect_to @bar73, notice: "Bar73 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar73 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar73.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar73s/1 or /bar73s/1.json
  def destroy
    @bar73.destroy
    respond_to do |format|
      format.html { redirect_to bar73s_url, notice: "Bar73 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar73
      @bar73 = Bar73.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar73_params
      params.require(:bar73).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
