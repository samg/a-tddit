class Bar17sController < ApplicationController
  before_action :set_bar17, only: %i[ show edit update destroy ]

  # GET /bar17s or /bar17s.json
  def index
    @bar17s = Bar17.all
  end

  # GET /bar17s/1 or /bar17s/1.json
  def show
  end

  # GET /bar17s/new
  def new
    @bar17 = Bar17.new
  end

  # GET /bar17s/1/edit
  def edit
  end

  # POST /bar17s or /bar17s.json
  def create
    @bar17 = Bar17.new(bar17_params)

    respond_to do |format|
      if @bar17.save
        format.html { redirect_to @bar17, notice: "Bar17 was successfully created." }
        format.json { render :show, status: :created, location: @bar17 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar17s/1 or /bar17s/1.json
  def update
    respond_to do |format|
      if @bar17.update(bar17_params)
        format.html { redirect_to @bar17, notice: "Bar17 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar17 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar17s/1 or /bar17s/1.json
  def destroy
    @bar17.destroy
    respond_to do |format|
      format.html { redirect_to bar17s_url, notice: "Bar17 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar17
      @bar17 = Bar17.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar17_params
      params.require(:bar17).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
