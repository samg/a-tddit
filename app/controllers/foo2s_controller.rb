class Foo2sController < ApplicationController
  before_action :set_foo2, only: %i[ show edit update destroy ]

  # GET /foo2s or /foo2s.json
  def index
    @foo2s = Foo2.all
  end

  # GET /foo2s/1 or /foo2s/1.json
  def show
  end

  # GET /foo2s/new
  def new
    @foo2 = Foo2.new
  end

  # GET /foo2s/1/edit
  def edit
  end

  # POST /foo2s or /foo2s.json
  def create
    @foo2 = Foo2.new(foo2_params)

    respond_to do |format|
      if @foo2.save
        format.html { redirect_to @foo2, notice: "Foo2 was successfully created." }
        format.json { render :show, status: :created, location: @foo2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo2s/1 or /foo2s/1.json
  def update
    respond_to do |format|
      if @foo2.update(foo2_params)
        format.html { redirect_to @foo2, notice: "Foo2 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo2s/1 or /foo2s/1.json
  def destroy
    @foo2.destroy
    respond_to do |format|
      format.html { redirect_to foo2s_url, notice: "Foo2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo2
      @foo2 = Foo2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo2_params
      params.require(:foo2).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
