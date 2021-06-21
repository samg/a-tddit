class Foo41sController < ApplicationController
  before_action :set_foo41, only: %i[ show edit update destroy ]

  # GET /foo41s or /foo41s.json
  def index
    @foo41s = Foo41.all
  end

  # GET /foo41s/1 or /foo41s/1.json
  def show
  end

  # GET /foo41s/new
  def new
    @foo41 = Foo41.new
  end

  # GET /foo41s/1/edit
  def edit
  end

  # POST /foo41s or /foo41s.json
  def create
    @foo41 = Foo41.new(foo41_params)

    respond_to do |format|
      if @foo41.save
        format.html { redirect_to @foo41, notice: "Foo41 was successfully created." }
        format.json { render :show, status: :created, location: @foo41 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo41.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo41s/1 or /foo41s/1.json
  def update
    respond_to do |format|
      if @foo41.update(foo41_params)
        format.html { redirect_to @foo41, notice: "Foo41 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo41 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo41.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo41s/1 or /foo41s/1.json
  def destroy
    @foo41.destroy
    respond_to do |format|
      format.html { redirect_to foo41s_url, notice: "Foo41 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo41
      @foo41 = Foo41.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo41_params
      params.require(:foo41).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
