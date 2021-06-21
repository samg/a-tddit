class Foo57sController < ApplicationController
  before_action :set_foo57, only: %i[ show edit update destroy ]

  # GET /foo57s or /foo57s.json
  def index
    @foo57s = Foo57.all
  end

  # GET /foo57s/1 or /foo57s/1.json
  def show
  end

  # GET /foo57s/new
  def new
    @foo57 = Foo57.new
  end

  # GET /foo57s/1/edit
  def edit
  end

  # POST /foo57s or /foo57s.json
  def create
    @foo57 = Foo57.new(foo57_params)

    respond_to do |format|
      if @foo57.save
        format.html { redirect_to @foo57, notice: "Foo57 was successfully created." }
        format.json { render :show, status: :created, location: @foo57 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo57.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo57s/1 or /foo57s/1.json
  def update
    respond_to do |format|
      if @foo57.update(foo57_params)
        format.html { redirect_to @foo57, notice: "Foo57 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo57 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo57.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo57s/1 or /foo57s/1.json
  def destroy
    @foo57.destroy
    respond_to do |format|
      format.html { redirect_to foo57s_url, notice: "Foo57 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo57
      @foo57 = Foo57.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo57_params
      params.require(:foo57).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
