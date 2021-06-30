class Bar78sController < ApplicationController
  before_action :set_bar78, only: %i[ show edit update destroy ]

  # GET /bar78s or /bar78s.json
  def index
    @bar78s = Bar78.all
  end

  # GET /bar78s/1 or /bar78s/1.json
  def show
  end

  # GET /bar78s/new
  def new
    @bar78 = Bar78.new
  end

  # GET /bar78s/1/edit
  def edit
  end

  # POST /bar78s or /bar78s.json
  def create
    @bar78 = Bar78.new(bar78_params)

    respond_to do |format|
      if @bar78.save
        format.html { redirect_to @bar78, notice: "Bar78 was successfully created." }
        format.json { render :show, status: :created, location: @bar78 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar78.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar78s/1 or /bar78s/1.json
  def update
    respond_to do |format|
      if @bar78.update(bar78_params)
        format.html { redirect_to @bar78, notice: "Bar78 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar78 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar78.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar78s/1 or /bar78s/1.json
  def destroy
    @bar78.destroy
    respond_to do |format|
      format.html { redirect_to bar78s_url, notice: "Bar78 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar78
      @bar78 = Bar78.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar78_params
      params.require(:bar78).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
