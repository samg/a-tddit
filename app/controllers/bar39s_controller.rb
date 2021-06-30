class Bar39sController < ApplicationController
  before_action :set_bar39, only: %i[ show edit update destroy ]

  # GET /bar39s or /bar39s.json
  def index
    @bar39s = Bar39.all
  end

  # GET /bar39s/1 or /bar39s/1.json
  def show
  end

  # GET /bar39s/new
  def new
    @bar39 = Bar39.new
  end

  # GET /bar39s/1/edit
  def edit
  end

  # POST /bar39s or /bar39s.json
  def create
    @bar39 = Bar39.new(bar39_params)

    respond_to do |format|
      if @bar39.save
        format.html { redirect_to @bar39, notice: "Bar39 was successfully created." }
        format.json { render :show, status: :created, location: @bar39 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar39.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar39s/1 or /bar39s/1.json
  def update
    respond_to do |format|
      if @bar39.update(bar39_params)
        format.html { redirect_to @bar39, notice: "Bar39 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar39 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar39.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar39s/1 or /bar39s/1.json
  def destroy
    @bar39.destroy
    respond_to do |format|
      format.html { redirect_to bar39s_url, notice: "Bar39 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar39
      @bar39 = Bar39.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar39_params
      params.require(:bar39).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
