class Foo19sController < ApplicationController
  before_action :set_foo19, only: %i[ show edit update destroy ]

  # GET /foo19s or /foo19s.json
  def index
    @foo19s = Foo19.all
  end

  # GET /foo19s/1 or /foo19s/1.json
  def show
  end

  # GET /foo19s/new
  def new
    @foo19 = Foo19.new
  end

  # GET /foo19s/1/edit
  def edit
  end

  # POST /foo19s or /foo19s.json
  def create
    @foo19 = Foo19.new(foo19_params)

    respond_to do |format|
      if @foo19.save
        format.html { redirect_to @foo19, notice: "Foo19 was successfully created." }
        format.json { render :show, status: :created, location: @foo19 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo19s/1 or /foo19s/1.json
  def update
    respond_to do |format|
      if @foo19.update(foo19_params)
        format.html { redirect_to @foo19, notice: "Foo19 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo19 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo19s/1 or /foo19s/1.json
  def destroy
    @foo19.destroy
    respond_to do |format|
      format.html { redirect_to foo19s_url, notice: "Foo19 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo19
      @foo19 = Foo19.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo19_params
      params.require(:foo19).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
