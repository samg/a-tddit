class Bar56sController < ApplicationController
  before_action :set_bar56, only: %i[ show edit update destroy ]

  # GET /bar56s or /bar56s.json
  def index
    @bar56s = Bar56.all
  end

  # GET /bar56s/1 or /bar56s/1.json
  def show
  end

  # GET /bar56s/new
  def new
    @bar56 = Bar56.new
  end

  # GET /bar56s/1/edit
  def edit
  end

  # POST /bar56s or /bar56s.json
  def create
    @bar56 = Bar56.new(bar56_params)

    respond_to do |format|
      if @bar56.save
        format.html { redirect_to @bar56, notice: "Bar56 was successfully created." }
        format.json { render :show, status: :created, location: @bar56 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar56.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar56s/1 or /bar56s/1.json
  def update
    respond_to do |format|
      if @bar56.update(bar56_params)
        format.html { redirect_to @bar56, notice: "Bar56 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar56 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar56.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar56s/1 or /bar56s/1.json
  def destroy
    @bar56.destroy
    respond_to do |format|
      format.html { redirect_to bar56s_url, notice: "Bar56 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar56
      @bar56 = Bar56.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar56_params
      params.require(:bar56).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
