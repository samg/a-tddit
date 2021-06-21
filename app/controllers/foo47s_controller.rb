class Foo47sController < ApplicationController
  before_action :set_foo47, only: %i[ show edit update destroy ]

  # GET /foo47s or /foo47s.json
  def index
    @foo47s = Foo47.all
  end

  # GET /foo47s/1 or /foo47s/1.json
  def show
  end

  # GET /foo47s/new
  def new
    @foo47 = Foo47.new
  end

  # GET /foo47s/1/edit
  def edit
  end

  # POST /foo47s or /foo47s.json
  def create
    @foo47 = Foo47.new(foo47_params)

    respond_to do |format|
      if @foo47.save
        format.html { redirect_to @foo47, notice: "Foo47 was successfully created." }
        format.json { render :show, status: :created, location: @foo47 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo47.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo47s/1 or /foo47s/1.json
  def update
    respond_to do |format|
      if @foo47.update(foo47_params)
        format.html { redirect_to @foo47, notice: "Foo47 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo47 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo47.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo47s/1 or /foo47s/1.json
  def destroy
    @foo47.destroy
    respond_to do |format|
      format.html { redirect_to foo47s_url, notice: "Foo47 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo47
      @foo47 = Foo47.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo47_params
      params.require(:foo47).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
