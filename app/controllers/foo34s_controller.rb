class Foo34sController < ApplicationController
  before_action :set_foo34, only: %i[ show edit update destroy ]

  # GET /foo34s or /foo34s.json
  def index
    @foo34s = Foo34.all
  end

  # GET /foo34s/1 or /foo34s/1.json
  def show
  end

  # GET /foo34s/new
  def new
    @foo34 = Foo34.new
  end

  # GET /foo34s/1/edit
  def edit
  end

  # POST /foo34s or /foo34s.json
  def create
    @foo34 = Foo34.new(foo34_params)

    respond_to do |format|
      if @foo34.save
        format.html { redirect_to @foo34, notice: "Foo34 was successfully created." }
        format.json { render :show, status: :created, location: @foo34 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo34.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo34s/1 or /foo34s/1.json
  def update
    respond_to do |format|
      if @foo34.update(foo34_params)
        format.html { redirect_to @foo34, notice: "Foo34 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo34 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo34.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo34s/1 or /foo34s/1.json
  def destroy
    @foo34.destroy
    respond_to do |format|
      format.html { redirect_to foo34s_url, notice: "Foo34 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo34
      @foo34 = Foo34.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo34_params
      params.require(:foo34).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
