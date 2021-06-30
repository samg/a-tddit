class Bar34sController < ApplicationController
  before_action :set_bar34, only: %i[ show edit update destroy ]

  # GET /bar34s or /bar34s.json
  def index
    @bar34s = Bar34.all
  end

  # GET /bar34s/1 or /bar34s/1.json
  def show
  end

  # GET /bar34s/new
  def new
    @bar34 = Bar34.new
  end

  # GET /bar34s/1/edit
  def edit
  end

  # POST /bar34s or /bar34s.json
  def create
    @bar34 = Bar34.new(bar34_params)

    respond_to do |format|
      if @bar34.save
        format.html { redirect_to @bar34, notice: "Bar34 was successfully created." }
        format.json { render :show, status: :created, location: @bar34 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar34.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar34s/1 or /bar34s/1.json
  def update
    respond_to do |format|
      if @bar34.update(bar34_params)
        format.html { redirect_to @bar34, notice: "Bar34 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar34 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar34.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar34s/1 or /bar34s/1.json
  def destroy
    @bar34.destroy
    respond_to do |format|
      format.html { redirect_to bar34s_url, notice: "Bar34 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar34
      @bar34 = Bar34.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar34_params
      params.require(:bar34).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
