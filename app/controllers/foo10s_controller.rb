class Foo10sController < ApplicationController
  before_action :set_foo10, only: %i[ show edit update destroy ]

  # GET /foo10s or /foo10s.json
  def index
    @foo10s = Foo10.all
  end

  # GET /foo10s/1 or /foo10s/1.json
  def show
  end

  # GET /foo10s/new
  def new
    @foo10 = Foo10.new
  end

  # GET /foo10s/1/edit
  def edit
  end

  # POST /foo10s or /foo10s.json
  def create
    @foo10 = Foo10.new(foo10_params)

    respond_to do |format|
      if @foo10.save
        format.html { redirect_to @foo10, notice: "Foo10 was successfully created." }
        format.json { render :show, status: :created, location: @foo10 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo10s/1 or /foo10s/1.json
  def update
    respond_to do |format|
      if @foo10.update(foo10_params)
        format.html { redirect_to @foo10, notice: "Foo10 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo10 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo10s/1 or /foo10s/1.json
  def destroy
    @foo10.destroy
    respond_to do |format|
      format.html { redirect_to foo10s_url, notice: "Foo10 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo10
      @foo10 = Foo10.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo10_params
      params.require(:foo10).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
