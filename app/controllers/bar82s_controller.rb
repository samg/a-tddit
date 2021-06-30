class Bar82sController < ApplicationController
  before_action :set_bar82, only: %i[ show edit update destroy ]

  # GET /bar82s or /bar82s.json
  def index
    @bar82s = Bar82.all
  end

  # GET /bar82s/1 or /bar82s/1.json
  def show
  end

  # GET /bar82s/new
  def new
    @bar82 = Bar82.new
  end

  # GET /bar82s/1/edit
  def edit
  end

  # POST /bar82s or /bar82s.json
  def create
    @bar82 = Bar82.new(bar82_params)

    respond_to do |format|
      if @bar82.save
        format.html { redirect_to @bar82, notice: "Bar82 was successfully created." }
        format.json { render :show, status: :created, location: @bar82 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar82.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar82s/1 or /bar82s/1.json
  def update
    respond_to do |format|
      if @bar82.update(bar82_params)
        format.html { redirect_to @bar82, notice: "Bar82 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar82 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar82.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar82s/1 or /bar82s/1.json
  def destroy
    @bar82.destroy
    respond_to do |format|
      format.html { redirect_to bar82s_url, notice: "Bar82 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar82
      @bar82 = Bar82.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar82_params
      params.require(:bar82).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
