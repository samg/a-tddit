class Bar30sController < ApplicationController
  before_action :set_bar30, only: %i[ show edit update destroy ]

  # GET /bar30s or /bar30s.json
  def index
    @bar30s = Bar30.all
  end

  # GET /bar30s/1 or /bar30s/1.json
  def show
  end

  # GET /bar30s/new
  def new
    @bar30 = Bar30.new
  end

  # GET /bar30s/1/edit
  def edit
  end

  # POST /bar30s or /bar30s.json
  def create
    @bar30 = Bar30.new(bar30_params)

    respond_to do |format|
      if @bar30.save
        format.html { redirect_to @bar30, notice: "Bar30 was successfully created." }
        format.json { render :show, status: :created, location: @bar30 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar30.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar30s/1 or /bar30s/1.json
  def update
    respond_to do |format|
      if @bar30.update(bar30_params)
        format.html { redirect_to @bar30, notice: "Bar30 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar30 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar30.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar30s/1 or /bar30s/1.json
  def destroy
    @bar30.destroy
    respond_to do |format|
      format.html { redirect_to bar30s_url, notice: "Bar30 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar30
      @bar30 = Bar30.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar30_params
      params.require(:bar30).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
