class Foo75sController < ApplicationController
  before_action :set_foo75, only: %i[ show edit update destroy ]

  # GET /foo75s or /foo75s.json
  def index
    @foo75s = Foo75.all
  end

  # GET /foo75s/1 or /foo75s/1.json
  def show
  end

  # GET /foo75s/new
  def new
    @foo75 = Foo75.new
  end

  # GET /foo75s/1/edit
  def edit
  end

  # POST /foo75s or /foo75s.json
  def create
    @foo75 = Foo75.new(foo75_params)

    respond_to do |format|
      if @foo75.save
        format.html { redirect_to @foo75, notice: "Foo75 was successfully created." }
        format.json { render :show, status: :created, location: @foo75 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo75.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo75s/1 or /foo75s/1.json
  def update
    respond_to do |format|
      if @foo75.update(foo75_params)
        format.html { redirect_to @foo75, notice: "Foo75 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo75 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo75.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo75s/1 or /foo75s/1.json
  def destroy
    @foo75.destroy
    respond_to do |format|
      format.html { redirect_to foo75s_url, notice: "Foo75 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo75
      @foo75 = Foo75.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo75_params
      params.require(:foo75).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
