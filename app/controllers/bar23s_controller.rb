class Bar23sController < ApplicationController
  before_action :set_bar23, only: %i[ show edit update destroy ]

  # GET /bar23s or /bar23s.json
  def index
    @bar23s = Bar23.all
  end

  # GET /bar23s/1 or /bar23s/1.json
  def show
  end

  # GET /bar23s/new
  def new
    @bar23 = Bar23.new
  end

  # GET /bar23s/1/edit
  def edit
  end

  # POST /bar23s or /bar23s.json
  def create
    @bar23 = Bar23.new(bar23_params)

    respond_to do |format|
      if @bar23.save
        format.html { redirect_to @bar23, notice: "Bar23 was successfully created." }
        format.json { render :show, status: :created, location: @bar23 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar23.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar23s/1 or /bar23s/1.json
  def update
    respond_to do |format|
      if @bar23.update(bar23_params)
        format.html { redirect_to @bar23, notice: "Bar23 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar23 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar23.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar23s/1 or /bar23s/1.json
  def destroy
    @bar23.destroy
    respond_to do |format|
      format.html { redirect_to bar23s_url, notice: "Bar23 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar23
      @bar23 = Bar23.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar23_params
      params.require(:bar23).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
