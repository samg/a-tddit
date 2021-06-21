class Foo52sController < ApplicationController
  before_action :set_foo52, only: %i[ show edit update destroy ]

  # GET /foo52s or /foo52s.json
  def index
    @foo52s = Foo52.all
  end

  # GET /foo52s/1 or /foo52s/1.json
  def show
  end

  # GET /foo52s/new
  def new
    @foo52 = Foo52.new
  end

  # GET /foo52s/1/edit
  def edit
  end

  # POST /foo52s or /foo52s.json
  def create
    @foo52 = Foo52.new(foo52_params)

    respond_to do |format|
      if @foo52.save
        format.html { redirect_to @foo52, notice: "Foo52 was successfully created." }
        format.json { render :show, status: :created, location: @foo52 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo52.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo52s/1 or /foo52s/1.json
  def update
    respond_to do |format|
      if @foo52.update(foo52_params)
        format.html { redirect_to @foo52, notice: "Foo52 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo52 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo52.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo52s/1 or /foo52s/1.json
  def destroy
    @foo52.destroy
    respond_to do |format|
      format.html { redirect_to foo52s_url, notice: "Foo52 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo52
      @foo52 = Foo52.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo52_params
      params.require(:foo52).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
