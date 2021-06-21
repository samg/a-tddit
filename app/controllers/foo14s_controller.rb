class Foo14sController < ApplicationController
  before_action :set_foo14, only: %i[ show edit update destroy ]

  # GET /foo14s or /foo14s.json
  def index
    @foo14s = Foo14.all
  end

  # GET /foo14s/1 or /foo14s/1.json
  def show
  end

  # GET /foo14s/new
  def new
    @foo14 = Foo14.new
  end

  # GET /foo14s/1/edit
  def edit
  end

  # POST /foo14s or /foo14s.json
  def create
    @foo14 = Foo14.new(foo14_params)

    respond_to do |format|
      if @foo14.save
        format.html { redirect_to @foo14, notice: "Foo14 was successfully created." }
        format.json { render :show, status: :created, location: @foo14 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo14s/1 or /foo14s/1.json
  def update
    respond_to do |format|
      if @foo14.update(foo14_params)
        format.html { redirect_to @foo14, notice: "Foo14 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo14 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo14s/1 or /foo14s/1.json
  def destroy
    @foo14.destroy
    respond_to do |format|
      format.html { redirect_to foo14s_url, notice: "Foo14 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo14
      @foo14 = Foo14.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo14_params
      params.require(:foo14).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
