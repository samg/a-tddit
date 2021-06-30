class Bar28sController < ApplicationController
  before_action :set_bar28, only: %i[ show edit update destroy ]

  # GET /bar28s or /bar28s.json
  def index
    @bar28s = Bar28.all
  end

  # GET /bar28s/1 or /bar28s/1.json
  def show
  end

  # GET /bar28s/new
  def new
    @bar28 = Bar28.new
  end

  # GET /bar28s/1/edit
  def edit
  end

  # POST /bar28s or /bar28s.json
  def create
    @bar28 = Bar28.new(bar28_params)

    respond_to do |format|
      if @bar28.save
        format.html { redirect_to @bar28, notice: "Bar28 was successfully created." }
        format.json { render :show, status: :created, location: @bar28 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar28.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar28s/1 or /bar28s/1.json
  def update
    respond_to do |format|
      if @bar28.update(bar28_params)
        format.html { redirect_to @bar28, notice: "Bar28 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar28 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar28.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar28s/1 or /bar28s/1.json
  def destroy
    @bar28.destroy
    respond_to do |format|
      format.html { redirect_to bar28s_url, notice: "Bar28 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar28
      @bar28 = Bar28.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar28_params
      params.require(:bar28).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
