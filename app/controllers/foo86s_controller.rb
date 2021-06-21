class Foo86sController < ApplicationController
  before_action :set_foo86, only: %i[ show edit update destroy ]

  # GET /foo86s or /foo86s.json
  def index
    @foo86s = Foo86.all
  end

  # GET /foo86s/1 or /foo86s/1.json
  def show
  end

  # GET /foo86s/new
  def new
    @foo86 = Foo86.new
  end

  # GET /foo86s/1/edit
  def edit
  end

  # POST /foo86s or /foo86s.json
  def create
    @foo86 = Foo86.new(foo86_params)

    respond_to do |format|
      if @foo86.save
        format.html { redirect_to @foo86, notice: "Foo86 was successfully created." }
        format.json { render :show, status: :created, location: @foo86 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo86.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo86s/1 or /foo86s/1.json
  def update
    respond_to do |format|
      if @foo86.update(foo86_params)
        format.html { redirect_to @foo86, notice: "Foo86 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo86 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo86.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo86s/1 or /foo86s/1.json
  def destroy
    @foo86.destroy
    respond_to do |format|
      format.html { redirect_to foo86s_url, notice: "Foo86 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo86
      @foo86 = Foo86.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo86_params
      params.require(:foo86).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
