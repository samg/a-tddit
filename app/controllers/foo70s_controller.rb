class Foo70sController < ApplicationController
  before_action :set_foo70, only: %i[ show edit update destroy ]

  # GET /foo70s or /foo70s.json
  def index
    @foo70s = Foo70.all
  end

  # GET /foo70s/1 or /foo70s/1.json
  def show
  end

  # GET /foo70s/new
  def new
    @foo70 = Foo70.new
  end

  # GET /foo70s/1/edit
  def edit
  end

  # POST /foo70s or /foo70s.json
  def create
    @foo70 = Foo70.new(foo70_params)

    respond_to do |format|
      if @foo70.save
        format.html { redirect_to @foo70, notice: "Foo70 was successfully created." }
        format.json { render :show, status: :created, location: @foo70 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo70.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo70s/1 or /foo70s/1.json
  def update
    respond_to do |format|
      if @foo70.update(foo70_params)
        format.html { redirect_to @foo70, notice: "Foo70 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo70 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo70.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo70s/1 or /foo70s/1.json
  def destroy
    @foo70.destroy
    respond_to do |format|
      format.html { redirect_to foo70s_url, notice: "Foo70 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo70
      @foo70 = Foo70.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo70_params
      params.require(:foo70).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
