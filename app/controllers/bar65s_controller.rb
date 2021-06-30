class Bar65sController < ApplicationController
  before_action :set_bar65, only: %i[ show edit update destroy ]

  # GET /bar65s or /bar65s.json
  def index
    @bar65s = Bar65.all
  end

  # GET /bar65s/1 or /bar65s/1.json
  def show
  end

  # GET /bar65s/new
  def new
    @bar65 = Bar65.new
  end

  # GET /bar65s/1/edit
  def edit
  end

  # POST /bar65s or /bar65s.json
  def create
    @bar65 = Bar65.new(bar65_params)

    respond_to do |format|
      if @bar65.save
        format.html { redirect_to @bar65, notice: "Bar65 was successfully created." }
        format.json { render :show, status: :created, location: @bar65 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar65.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar65s/1 or /bar65s/1.json
  def update
    respond_to do |format|
      if @bar65.update(bar65_params)
        format.html { redirect_to @bar65, notice: "Bar65 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar65 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar65.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar65s/1 or /bar65s/1.json
  def destroy
    @bar65.destroy
    respond_to do |format|
      format.html { redirect_to bar65s_url, notice: "Bar65 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar65
      @bar65 = Bar65.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar65_params
      params.require(:bar65).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
