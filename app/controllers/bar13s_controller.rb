class Bar13sController < ApplicationController
  before_action :set_bar13, only: %i[ show edit update destroy ]

  # GET /bar13s or /bar13s.json
  def index
    @bar13s = Bar13.all
  end

  # GET /bar13s/1 or /bar13s/1.json
  def show
  end

  # GET /bar13s/new
  def new
    @bar13 = Bar13.new
  end

  # GET /bar13s/1/edit
  def edit
  end

  # POST /bar13s or /bar13s.json
  def create
    @bar13 = Bar13.new(bar13_params)

    respond_to do |format|
      if @bar13.save
        format.html { redirect_to @bar13, notice: "Bar13 was successfully created." }
        format.json { render :show, status: :created, location: @bar13 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar13s/1 or /bar13s/1.json
  def update
    respond_to do |format|
      if @bar13.update(bar13_params)
        format.html { redirect_to @bar13, notice: "Bar13 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar13 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar13s/1 or /bar13s/1.json
  def destroy
    @bar13.destroy
    respond_to do |format|
      format.html { redirect_to bar13s_url, notice: "Bar13 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar13
      @bar13 = Bar13.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar13_params
      params.require(:bar13).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
