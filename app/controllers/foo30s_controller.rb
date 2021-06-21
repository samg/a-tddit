class Foo30sController < ApplicationController
  before_action :set_foo30, only: %i[ show edit update destroy ]

  # GET /foo30s or /foo30s.json
  def index
    @foo30s = Foo30.all
  end

  # GET /foo30s/1 or /foo30s/1.json
  def show
  end

  # GET /foo30s/new
  def new
    @foo30 = Foo30.new
  end

  # GET /foo30s/1/edit
  def edit
  end

  # POST /foo30s or /foo30s.json
  def create
    @foo30 = Foo30.new(foo30_params)

    respond_to do |format|
      if @foo30.save
        format.html { redirect_to @foo30, notice: "Foo30 was successfully created." }
        format.json { render :show, status: :created, location: @foo30 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo30.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo30s/1 or /foo30s/1.json
  def update
    respond_to do |format|
      if @foo30.update(foo30_params)
        format.html { redirect_to @foo30, notice: "Foo30 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo30 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo30.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo30s/1 or /foo30s/1.json
  def destroy
    @foo30.destroy
    respond_to do |format|
      format.html { redirect_to foo30s_url, notice: "Foo30 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo30
      @foo30 = Foo30.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo30_params
      params.require(:foo30).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
