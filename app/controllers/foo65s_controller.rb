class Foo65sController < ApplicationController
  before_action :set_foo65, only: %i[ show edit update destroy ]

  # GET /foo65s or /foo65s.json
  def index
    @foo65s = Foo65.all
  end

  # GET /foo65s/1 or /foo65s/1.json
  def show
  end

  # GET /foo65s/new
  def new
    @foo65 = Foo65.new
  end

  # GET /foo65s/1/edit
  def edit
  end

  # POST /foo65s or /foo65s.json
  def create
    @foo65 = Foo65.new(foo65_params)

    respond_to do |format|
      if @foo65.save
        format.html { redirect_to @foo65, notice: "Foo65 was successfully created." }
        format.json { render :show, status: :created, location: @foo65 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo65.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo65s/1 or /foo65s/1.json
  def update
    respond_to do |format|
      if @foo65.update(foo65_params)
        format.html { redirect_to @foo65, notice: "Foo65 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo65 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo65.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo65s/1 or /foo65s/1.json
  def destroy
    @foo65.destroy
    respond_to do |format|
      format.html { redirect_to foo65s_url, notice: "Foo65 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo65
      @foo65 = Foo65.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo65_params
      params.require(:foo65).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
