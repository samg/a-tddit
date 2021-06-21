class Foo74sController < ApplicationController
  before_action :set_foo74, only: %i[ show edit update destroy ]

  # GET /foo74s or /foo74s.json
  def index
    @foo74s = Foo74.all
  end

  # GET /foo74s/1 or /foo74s/1.json
  def show
  end

  # GET /foo74s/new
  def new
    @foo74 = Foo74.new
  end

  # GET /foo74s/1/edit
  def edit
  end

  # POST /foo74s or /foo74s.json
  def create
    @foo74 = Foo74.new(foo74_params)

    respond_to do |format|
      if @foo74.save
        format.html { redirect_to @foo74, notice: "Foo74 was successfully created." }
        format.json { render :show, status: :created, location: @foo74 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo74.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo74s/1 or /foo74s/1.json
  def update
    respond_to do |format|
      if @foo74.update(foo74_params)
        format.html { redirect_to @foo74, notice: "Foo74 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo74 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo74.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo74s/1 or /foo74s/1.json
  def destroy
    @foo74.destroy
    respond_to do |format|
      format.html { redirect_to foo74s_url, notice: "Foo74 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo74
      @foo74 = Foo74.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo74_params
      params.require(:foo74).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
