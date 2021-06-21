class Foo90sController < ApplicationController
  before_action :set_foo90, only: %i[ show edit update destroy ]

  # GET /foo90s or /foo90s.json
  def index
    @foo90s = Foo90.all
  end

  # GET /foo90s/1 or /foo90s/1.json
  def show
  end

  # GET /foo90s/new
  def new
    @foo90 = Foo90.new
  end

  # GET /foo90s/1/edit
  def edit
  end

  # POST /foo90s or /foo90s.json
  def create
    @foo90 = Foo90.new(foo90_params)

    respond_to do |format|
      if @foo90.save
        format.html { redirect_to @foo90, notice: "Foo90 was successfully created." }
        format.json { render :show, status: :created, location: @foo90 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo90.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo90s/1 or /foo90s/1.json
  def update
    respond_to do |format|
      if @foo90.update(foo90_params)
        format.html { redirect_to @foo90, notice: "Foo90 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo90 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo90.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo90s/1 or /foo90s/1.json
  def destroy
    @foo90.destroy
    respond_to do |format|
      format.html { redirect_to foo90s_url, notice: "Foo90 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo90
      @foo90 = Foo90.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo90_params
      params.require(:foo90).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
