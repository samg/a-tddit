class Foo98sController < ApplicationController
  before_action :set_foo98, only: %i[ show edit update destroy ]

  # GET /foo98s or /foo98s.json
  def index
    @foo98s = Foo98.all
  end

  # GET /foo98s/1 or /foo98s/1.json
  def show
  end

  # GET /foo98s/new
  def new
    @foo98 = Foo98.new
  end

  # GET /foo98s/1/edit
  def edit
  end

  # POST /foo98s or /foo98s.json
  def create
    @foo98 = Foo98.new(foo98_params)

    respond_to do |format|
      if @foo98.save
        format.html { redirect_to @foo98, notice: "Foo98 was successfully created." }
        format.json { render :show, status: :created, location: @foo98 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo98.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo98s/1 or /foo98s/1.json
  def update
    respond_to do |format|
      if @foo98.update(foo98_params)
        format.html { redirect_to @foo98, notice: "Foo98 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo98 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo98.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo98s/1 or /foo98s/1.json
  def destroy
    @foo98.destroy
    respond_to do |format|
      format.html { redirect_to foo98s_url, notice: "Foo98 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo98
      @foo98 = Foo98.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo98_params
      params.require(:foo98).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
