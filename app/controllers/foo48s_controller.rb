class Foo48sController < ApplicationController
  before_action :set_foo48, only: %i[ show edit update destroy ]

  # GET /foo48s or /foo48s.json
  def index
    @foo48s = Foo48.all
  end

  # GET /foo48s/1 or /foo48s/1.json
  def show
  end

  # GET /foo48s/new
  def new
    @foo48 = Foo48.new
  end

  # GET /foo48s/1/edit
  def edit
  end

  # POST /foo48s or /foo48s.json
  def create
    @foo48 = Foo48.new(foo48_params)

    respond_to do |format|
      if @foo48.save
        format.html { redirect_to @foo48, notice: "Foo48 was successfully created." }
        format.json { render :show, status: :created, location: @foo48 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo48.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo48s/1 or /foo48s/1.json
  def update
    respond_to do |format|
      if @foo48.update(foo48_params)
        format.html { redirect_to @foo48, notice: "Foo48 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo48 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo48.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo48s/1 or /foo48s/1.json
  def destroy
    @foo48.destroy
    respond_to do |format|
      format.html { redirect_to foo48s_url, notice: "Foo48 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo48
      @foo48 = Foo48.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo48_params
      params.require(:foo48).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
