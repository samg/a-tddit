class Foo97sController < ApplicationController
  before_action :set_foo97, only: %i[ show edit update destroy ]

  # GET /foo97s or /foo97s.json
  def index
    @foo97s = Foo97.all
  end

  # GET /foo97s/1 or /foo97s/1.json
  def show
  end

  # GET /foo97s/new
  def new
    @foo97 = Foo97.new
  end

  # GET /foo97s/1/edit
  def edit
  end

  # POST /foo97s or /foo97s.json
  def create
    @foo97 = Foo97.new(foo97_params)

    respond_to do |format|
      if @foo97.save
        format.html { redirect_to @foo97, notice: "Foo97 was successfully created." }
        format.json { render :show, status: :created, location: @foo97 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo97.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo97s/1 or /foo97s/1.json
  def update
    respond_to do |format|
      if @foo97.update(foo97_params)
        format.html { redirect_to @foo97, notice: "Foo97 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo97 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo97.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo97s/1 or /foo97s/1.json
  def destroy
    @foo97.destroy
    respond_to do |format|
      format.html { redirect_to foo97s_url, notice: "Foo97 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo97
      @foo97 = Foo97.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo97_params
      params.require(:foo97).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
