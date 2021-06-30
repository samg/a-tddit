class Bar75sController < ApplicationController
  before_action :set_bar75, only: %i[ show edit update destroy ]

  # GET /bar75s or /bar75s.json
  def index
    @bar75s = Bar75.all
  end

  # GET /bar75s/1 or /bar75s/1.json
  def show
  end

  # GET /bar75s/new
  def new
    @bar75 = Bar75.new
  end

  # GET /bar75s/1/edit
  def edit
  end

  # POST /bar75s or /bar75s.json
  def create
    @bar75 = Bar75.new(bar75_params)

    respond_to do |format|
      if @bar75.save
        format.html { redirect_to @bar75, notice: "Bar75 was successfully created." }
        format.json { render :show, status: :created, location: @bar75 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar75.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar75s/1 or /bar75s/1.json
  def update
    respond_to do |format|
      if @bar75.update(bar75_params)
        format.html { redirect_to @bar75, notice: "Bar75 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar75 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar75.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar75s/1 or /bar75s/1.json
  def destroy
    @bar75.destroy
    respond_to do |format|
      format.html { redirect_to bar75s_url, notice: "Bar75 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar75
      @bar75 = Bar75.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar75_params
      params.require(:bar75).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
