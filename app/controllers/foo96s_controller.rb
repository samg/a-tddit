class Foo96sController < ApplicationController
  before_action :set_foo96, only: %i[ show edit update destroy ]

  # GET /foo96s or /foo96s.json
  def index
    @foo96s = Foo96.all
  end

  # GET /foo96s/1 or /foo96s/1.json
  def show
  end

  # GET /foo96s/new
  def new
    @foo96 = Foo96.new
  end

  # GET /foo96s/1/edit
  def edit
  end

  # POST /foo96s or /foo96s.json
  def create
    @foo96 = Foo96.new(foo96_params)

    respond_to do |format|
      if @foo96.save
        format.html { redirect_to @foo96, notice: "Foo96 was successfully created." }
        format.json { render :show, status: :created, location: @foo96 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo96.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo96s/1 or /foo96s/1.json
  def update
    respond_to do |format|
      if @foo96.update(foo96_params)
        format.html { redirect_to @foo96, notice: "Foo96 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo96 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo96.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo96s/1 or /foo96s/1.json
  def destroy
    @foo96.destroy
    respond_to do |format|
      format.html { redirect_to foo96s_url, notice: "Foo96 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo96
      @foo96 = Foo96.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo96_params
      params.require(:foo96).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
