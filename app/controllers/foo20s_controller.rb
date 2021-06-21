class Foo20sController < ApplicationController
  before_action :set_foo20, only: %i[ show edit update destroy ]

  # GET /foo20s or /foo20s.json
  def index
    @foo20s = Foo20.all
  end

  # GET /foo20s/1 or /foo20s/1.json
  def show
  end

  # GET /foo20s/new
  def new
    @foo20 = Foo20.new
  end

  # GET /foo20s/1/edit
  def edit
  end

  # POST /foo20s or /foo20s.json
  def create
    @foo20 = Foo20.new(foo20_params)

    respond_to do |format|
      if @foo20.save
        format.html { redirect_to @foo20, notice: "Foo20 was successfully created." }
        format.json { render :show, status: :created, location: @foo20 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo20s/1 or /foo20s/1.json
  def update
    respond_to do |format|
      if @foo20.update(foo20_params)
        format.html { redirect_to @foo20, notice: "Foo20 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo20 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo20s/1 or /foo20s/1.json
  def destroy
    @foo20.destroy
    respond_to do |format|
      format.html { redirect_to foo20s_url, notice: "Foo20 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo20
      @foo20 = Foo20.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo20_params
      params.require(:foo20).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
