class Foo83sController < ApplicationController
  before_action :set_foo83, only: %i[ show edit update destroy ]

  # GET /foo83s or /foo83s.json
  def index
    @foo83s = Foo83.all
  end

  # GET /foo83s/1 or /foo83s/1.json
  def show
  end

  # GET /foo83s/new
  def new
    @foo83 = Foo83.new
  end

  # GET /foo83s/1/edit
  def edit
  end

  # POST /foo83s or /foo83s.json
  def create
    @foo83 = Foo83.new(foo83_params)

    respond_to do |format|
      if @foo83.save
        format.html { redirect_to @foo83, notice: "Foo83 was successfully created." }
        format.json { render :show, status: :created, location: @foo83 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo83.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo83s/1 or /foo83s/1.json
  def update
    respond_to do |format|
      if @foo83.update(foo83_params)
        format.html { redirect_to @foo83, notice: "Foo83 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo83 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo83.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo83s/1 or /foo83s/1.json
  def destroy
    @foo83.destroy
    respond_to do |format|
      format.html { redirect_to foo83s_url, notice: "Foo83 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo83
      @foo83 = Foo83.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo83_params
      params.require(:foo83).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
