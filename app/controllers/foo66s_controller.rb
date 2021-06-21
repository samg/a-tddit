class Foo66sController < ApplicationController
  before_action :set_foo66, only: %i[ show edit update destroy ]

  # GET /foo66s or /foo66s.json
  def index
    @foo66s = Foo66.all
  end

  # GET /foo66s/1 or /foo66s/1.json
  def show
  end

  # GET /foo66s/new
  def new
    @foo66 = Foo66.new
  end

  # GET /foo66s/1/edit
  def edit
  end

  # POST /foo66s or /foo66s.json
  def create
    @foo66 = Foo66.new(foo66_params)

    respond_to do |format|
      if @foo66.save
        format.html { redirect_to @foo66, notice: "Foo66 was successfully created." }
        format.json { render :show, status: :created, location: @foo66 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo66.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo66s/1 or /foo66s/1.json
  def update
    respond_to do |format|
      if @foo66.update(foo66_params)
        format.html { redirect_to @foo66, notice: "Foo66 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo66 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo66.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo66s/1 or /foo66s/1.json
  def destroy
    @foo66.destroy
    respond_to do |format|
      format.html { redirect_to foo66s_url, notice: "Foo66 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo66
      @foo66 = Foo66.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo66_params
      params.require(:foo66).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
