class Foo8sController < ApplicationController
  before_action :set_foo8, only: %i[ show edit update destroy ]

  # GET /foo8s or /foo8s.json
  def index
    @foo8s = Foo8.all
  end

  # GET /foo8s/1 or /foo8s/1.json
  def show
  end

  # GET /foo8s/new
  def new
    @foo8 = Foo8.new
  end

  # GET /foo8s/1/edit
  def edit
  end

  # POST /foo8s or /foo8s.json
  def create
    @foo8 = Foo8.new(foo8_params)

    respond_to do |format|
      if @foo8.save
        format.html { redirect_to @foo8, notice: "Foo8 was successfully created." }
        format.json { render :show, status: :created, location: @foo8 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo8s/1 or /foo8s/1.json
  def update
    respond_to do |format|
      if @foo8.update(foo8_params)
        format.html { redirect_to @foo8, notice: "Foo8 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo8 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo8s/1 or /foo8s/1.json
  def destroy
    @foo8.destroy
    respond_to do |format|
      format.html { redirect_to foo8s_url, notice: "Foo8 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo8
      @foo8 = Foo8.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo8_params
      params.require(:foo8).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
