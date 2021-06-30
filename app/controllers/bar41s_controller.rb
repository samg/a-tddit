class Bar41sController < ApplicationController
  before_action :set_bar41, only: %i[ show edit update destroy ]

  # GET /bar41s or /bar41s.json
  def index
    @bar41s = Bar41.all
  end

  # GET /bar41s/1 or /bar41s/1.json
  def show
  end

  # GET /bar41s/new
  def new
    @bar41 = Bar41.new
  end

  # GET /bar41s/1/edit
  def edit
  end

  # POST /bar41s or /bar41s.json
  def create
    @bar41 = Bar41.new(bar41_params)

    respond_to do |format|
      if @bar41.save
        format.html { redirect_to @bar41, notice: "Bar41 was successfully created." }
        format.json { render :show, status: :created, location: @bar41 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar41.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar41s/1 or /bar41s/1.json
  def update
    respond_to do |format|
      if @bar41.update(bar41_params)
        format.html { redirect_to @bar41, notice: "Bar41 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar41 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar41.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar41s/1 or /bar41s/1.json
  def destroy
    @bar41.destroy
    respond_to do |format|
      format.html { redirect_to bar41s_url, notice: "Bar41 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar41
      @bar41 = Bar41.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar41_params
      params.require(:bar41).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
