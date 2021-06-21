class Foo81sController < ApplicationController
  before_action :set_foo81, only: %i[ show edit update destroy ]

  # GET /foo81s or /foo81s.json
  def index
    @foo81s = Foo81.all
  end

  # GET /foo81s/1 or /foo81s/1.json
  def show
  end

  # GET /foo81s/new
  def new
    @foo81 = Foo81.new
  end

  # GET /foo81s/1/edit
  def edit
  end

  # POST /foo81s or /foo81s.json
  def create
    @foo81 = Foo81.new(foo81_params)

    respond_to do |format|
      if @foo81.save
        format.html { redirect_to @foo81, notice: "Foo81 was successfully created." }
        format.json { render :show, status: :created, location: @foo81 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo81.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo81s/1 or /foo81s/1.json
  def update
    respond_to do |format|
      if @foo81.update(foo81_params)
        format.html { redirect_to @foo81, notice: "Foo81 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo81 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo81.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo81s/1 or /foo81s/1.json
  def destroy
    @foo81.destroy
    respond_to do |format|
      format.html { redirect_to foo81s_url, notice: "Foo81 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo81
      @foo81 = Foo81.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo81_params
      params.require(:foo81).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
