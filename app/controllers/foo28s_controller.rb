class Foo28sController < ApplicationController
  before_action :set_foo28, only: %i[ show edit update destroy ]

  # GET /foo28s or /foo28s.json
  def index
    @foo28s = Foo28.all
  end

  # GET /foo28s/1 or /foo28s/1.json
  def show
  end

  # GET /foo28s/new
  def new
    @foo28 = Foo28.new
  end

  # GET /foo28s/1/edit
  def edit
  end

  # POST /foo28s or /foo28s.json
  def create
    @foo28 = Foo28.new(foo28_params)

    respond_to do |format|
      if @foo28.save
        format.html { redirect_to @foo28, notice: "Foo28 was successfully created." }
        format.json { render :show, status: :created, location: @foo28 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo28.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo28s/1 or /foo28s/1.json
  def update
    respond_to do |format|
      if @foo28.update(foo28_params)
        format.html { redirect_to @foo28, notice: "Foo28 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo28 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo28.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo28s/1 or /foo28s/1.json
  def destroy
    @foo28.destroy
    respond_to do |format|
      format.html { redirect_to foo28s_url, notice: "Foo28 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo28
      @foo28 = Foo28.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo28_params
      params.require(:foo28).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
