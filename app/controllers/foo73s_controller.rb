class Foo73sController < ApplicationController
  before_action :set_foo73, only: %i[ show edit update destroy ]

  # GET /foo73s or /foo73s.json
  def index
    @foo73s = Foo73.all
  end

  # GET /foo73s/1 or /foo73s/1.json
  def show
  end

  # GET /foo73s/new
  def new
    @foo73 = Foo73.new
  end

  # GET /foo73s/1/edit
  def edit
  end

  # POST /foo73s or /foo73s.json
  def create
    @foo73 = Foo73.new(foo73_params)

    respond_to do |format|
      if @foo73.save
        format.html { redirect_to @foo73, notice: "Foo73 was successfully created." }
        format.json { render :show, status: :created, location: @foo73 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo73.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo73s/1 or /foo73s/1.json
  def update
    respond_to do |format|
      if @foo73.update(foo73_params)
        format.html { redirect_to @foo73, notice: "Foo73 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo73 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo73.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo73s/1 or /foo73s/1.json
  def destroy
    @foo73.destroy
    respond_to do |format|
      format.html { redirect_to foo73s_url, notice: "Foo73 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo73
      @foo73 = Foo73.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo73_params
      params.require(:foo73).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
