class Foo80sController < ApplicationController
  before_action :set_foo80, only: %i[ show edit update destroy ]

  # GET /foo80s or /foo80s.json
  def index
    @foo80s = Foo80.all
  end

  # GET /foo80s/1 or /foo80s/1.json
  def show
  end

  # GET /foo80s/new
  def new
    @foo80 = Foo80.new
  end

  # GET /foo80s/1/edit
  def edit
  end

  # POST /foo80s or /foo80s.json
  def create
    @foo80 = Foo80.new(foo80_params)

    respond_to do |format|
      if @foo80.save
        format.html { redirect_to @foo80, notice: "Foo80 was successfully created." }
        format.json { render :show, status: :created, location: @foo80 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo80.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo80s/1 or /foo80s/1.json
  def update
    respond_to do |format|
      if @foo80.update(foo80_params)
        format.html { redirect_to @foo80, notice: "Foo80 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo80 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo80.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo80s/1 or /foo80s/1.json
  def destroy
    @foo80.destroy
    respond_to do |format|
      format.html { redirect_to foo80s_url, notice: "Foo80 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo80
      @foo80 = Foo80.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo80_params
      params.require(:foo80).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
