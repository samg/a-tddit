class Bar2sController < ApplicationController
  before_action :set_bar2, only: %i[ show edit update destroy ]

  # GET /bar2s or /bar2s.json
  def index
    @bar2s = Bar2.all
  end

  # GET /bar2s/1 or /bar2s/1.json
  def show
  end

  # GET /bar2s/new
  def new
    @bar2 = Bar2.new
  end

  # GET /bar2s/1/edit
  def edit
  end

  # POST /bar2s or /bar2s.json
  def create
    @bar2 = Bar2.new(bar2_params)

    respond_to do |format|
      if @bar2.save
        format.html { redirect_to @bar2, notice: "Bar2 was successfully created." }
        format.json { render :show, status: :created, location: @bar2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar2s/1 or /bar2s/1.json
  def update
    respond_to do |format|
      if @bar2.update(bar2_params)
        format.html { redirect_to @bar2, notice: "Bar2 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar2s/1 or /bar2s/1.json
  def destroy
    @bar2.destroy
    respond_to do |format|
      format.html { redirect_to bar2s_url, notice: "Bar2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar2
      @bar2 = Bar2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar2_params
      params.require(:bar2).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
