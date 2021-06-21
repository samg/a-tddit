class Foo5sController < ApplicationController
  before_action :set_foo5, only: %i[ show edit update destroy ]

  # GET /foo5s or /foo5s.json
  def index
    @foo5s = Foo5.all
  end

  # GET /foo5s/1 or /foo5s/1.json
  def show
  end

  # GET /foo5s/new
  def new
    @foo5 = Foo5.new
  end

  # GET /foo5s/1/edit
  def edit
  end

  # POST /foo5s or /foo5s.json
  def create
    @foo5 = Foo5.new(foo5_params)

    respond_to do |format|
      if @foo5.save
        format.html { redirect_to @foo5, notice: "Foo5 was successfully created." }
        format.json { render :show, status: :created, location: @foo5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo5s/1 or /foo5s/1.json
  def update
    respond_to do |format|
      if @foo5.update(foo5_params)
        format.html { redirect_to @foo5, notice: "Foo5 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo5s/1 or /foo5s/1.json
  def destroy
    @foo5.destroy
    respond_to do |format|
      format.html { redirect_to foo5s_url, notice: "Foo5 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo5
      @foo5 = Foo5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo5_params
      params.require(:foo5).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
