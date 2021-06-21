class Foo15sController < ApplicationController
  before_action :set_foo15, only: %i[ show edit update destroy ]

  # GET /foo15s or /foo15s.json
  def index
    @foo15s = Foo15.all
  end

  # GET /foo15s/1 or /foo15s/1.json
  def show
  end

  # GET /foo15s/new
  def new
    @foo15 = Foo15.new
  end

  # GET /foo15s/1/edit
  def edit
  end

  # POST /foo15s or /foo15s.json
  def create
    @foo15 = Foo15.new(foo15_params)

    respond_to do |format|
      if @foo15.save
        format.html { redirect_to @foo15, notice: "Foo15 was successfully created." }
        format.json { render :show, status: :created, location: @foo15 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo15s/1 or /foo15s/1.json
  def update
    respond_to do |format|
      if @foo15.update(foo15_params)
        format.html { redirect_to @foo15, notice: "Foo15 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo15 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo15s/1 or /foo15s/1.json
  def destroy
    @foo15.destroy
    respond_to do |format|
      format.html { redirect_to foo15s_url, notice: "Foo15 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo15
      @foo15 = Foo15.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo15_params
      params.require(:foo15).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
