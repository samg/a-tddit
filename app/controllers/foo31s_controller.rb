class Foo31sController < ApplicationController
  before_action :set_foo31, only: %i[ show edit update destroy ]

  # GET /foo31s or /foo31s.json
  def index
    @foo31s = Foo31.all
  end

  # GET /foo31s/1 or /foo31s/1.json
  def show
  end

  # GET /foo31s/new
  def new
    @foo31 = Foo31.new
  end

  # GET /foo31s/1/edit
  def edit
  end

  # POST /foo31s or /foo31s.json
  def create
    @foo31 = Foo31.new(foo31_params)

    respond_to do |format|
      if @foo31.save
        format.html { redirect_to @foo31, notice: "Foo31 was successfully created." }
        format.json { render :show, status: :created, location: @foo31 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo31.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo31s/1 or /foo31s/1.json
  def update
    respond_to do |format|
      if @foo31.update(foo31_params)
        format.html { redirect_to @foo31, notice: "Foo31 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo31 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo31.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo31s/1 or /foo31s/1.json
  def destroy
    @foo31.destroy
    respond_to do |format|
      format.html { redirect_to foo31s_url, notice: "Foo31 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo31
      @foo31 = Foo31.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo31_params
      params.require(:foo31).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
