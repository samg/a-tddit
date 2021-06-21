class Foo60sController < ApplicationController
  before_action :set_foo60, only: %i[ show edit update destroy ]

  # GET /foo60s or /foo60s.json
  def index
    @foo60s = Foo60.all
  end

  # GET /foo60s/1 or /foo60s/1.json
  def show
  end

  # GET /foo60s/new
  def new
    @foo60 = Foo60.new
  end

  # GET /foo60s/1/edit
  def edit
  end

  # POST /foo60s or /foo60s.json
  def create
    @foo60 = Foo60.new(foo60_params)

    respond_to do |format|
      if @foo60.save
        format.html { redirect_to @foo60, notice: "Foo60 was successfully created." }
        format.json { render :show, status: :created, location: @foo60 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo60.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo60s/1 or /foo60s/1.json
  def update
    respond_to do |format|
      if @foo60.update(foo60_params)
        format.html { redirect_to @foo60, notice: "Foo60 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo60 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo60.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo60s/1 or /foo60s/1.json
  def destroy
    @foo60.destroy
    respond_to do |format|
      format.html { redirect_to foo60s_url, notice: "Foo60 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo60
      @foo60 = Foo60.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo60_params
      params.require(:foo60).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
