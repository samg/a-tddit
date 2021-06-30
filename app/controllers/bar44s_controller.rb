class Bar44sController < ApplicationController
  before_action :set_bar44, only: %i[ show edit update destroy ]

  # GET /bar44s or /bar44s.json
  def index
    @bar44s = Bar44.all
  end

  # GET /bar44s/1 or /bar44s/1.json
  def show
  end

  # GET /bar44s/new
  def new
    @bar44 = Bar44.new
  end

  # GET /bar44s/1/edit
  def edit
  end

  # POST /bar44s or /bar44s.json
  def create
    @bar44 = Bar44.new(bar44_params)

    respond_to do |format|
      if @bar44.save
        format.html { redirect_to @bar44, notice: "Bar44 was successfully created." }
        format.json { render :show, status: :created, location: @bar44 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar44.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar44s/1 or /bar44s/1.json
  def update
    respond_to do |format|
      if @bar44.update(bar44_params)
        format.html { redirect_to @bar44, notice: "Bar44 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar44 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar44.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar44s/1 or /bar44s/1.json
  def destroy
    @bar44.destroy
    respond_to do |format|
      format.html { redirect_to bar44s_url, notice: "Bar44 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar44
      @bar44 = Bar44.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar44_params
      params.require(:bar44).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
