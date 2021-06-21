class Foo33sController < ApplicationController
  before_action :set_foo33, only: %i[ show edit update destroy ]

  # GET /foo33s or /foo33s.json
  def index
    @foo33s = Foo33.all
  end

  # GET /foo33s/1 or /foo33s/1.json
  def show
  end

  # GET /foo33s/new
  def new
    @foo33 = Foo33.new
  end

  # GET /foo33s/1/edit
  def edit
  end

  # POST /foo33s or /foo33s.json
  def create
    @foo33 = Foo33.new(foo33_params)

    respond_to do |format|
      if @foo33.save
        format.html { redirect_to @foo33, notice: "Foo33 was successfully created." }
        format.json { render :show, status: :created, location: @foo33 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo33.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo33s/1 or /foo33s/1.json
  def update
    respond_to do |format|
      if @foo33.update(foo33_params)
        format.html { redirect_to @foo33, notice: "Foo33 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo33 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo33.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo33s/1 or /foo33s/1.json
  def destroy
    @foo33.destroy
    respond_to do |format|
      format.html { redirect_to foo33s_url, notice: "Foo33 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo33
      @foo33 = Foo33.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo33_params
      params.require(:foo33).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
