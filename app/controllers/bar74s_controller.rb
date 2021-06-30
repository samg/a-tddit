class Bar74sController < ApplicationController
  before_action :set_bar74, only: %i[ show edit update destroy ]

  # GET /bar74s or /bar74s.json
  def index
    @bar74s = Bar74.all
  end

  # GET /bar74s/1 or /bar74s/1.json
  def show
  end

  # GET /bar74s/new
  def new
    @bar74 = Bar74.new
  end

  # GET /bar74s/1/edit
  def edit
  end

  # POST /bar74s or /bar74s.json
  def create
    @bar74 = Bar74.new(bar74_params)

    respond_to do |format|
      if @bar74.save
        format.html { redirect_to @bar74, notice: "Bar74 was successfully created." }
        format.json { render :show, status: :created, location: @bar74 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar74.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar74s/1 or /bar74s/1.json
  def update
    respond_to do |format|
      if @bar74.update(bar74_params)
        format.html { redirect_to @bar74, notice: "Bar74 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar74 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar74.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar74s/1 or /bar74s/1.json
  def destroy
    @bar74.destroy
    respond_to do |format|
      format.html { redirect_to bar74s_url, notice: "Bar74 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar74
      @bar74 = Bar74.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar74_params
      params.require(:bar74).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
