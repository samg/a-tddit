class Foo44sController < ApplicationController
  before_action :set_foo44, only: %i[ show edit update destroy ]

  # GET /foo44s or /foo44s.json
  def index
    @foo44s = Foo44.all
  end

  # GET /foo44s/1 or /foo44s/1.json
  def show
  end

  # GET /foo44s/new
  def new
    @foo44 = Foo44.new
  end

  # GET /foo44s/1/edit
  def edit
  end

  # POST /foo44s or /foo44s.json
  def create
    @foo44 = Foo44.new(foo44_params)

    respond_to do |format|
      if @foo44.save
        format.html { redirect_to @foo44, notice: "Foo44 was successfully created." }
        format.json { render :show, status: :created, location: @foo44 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo44.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo44s/1 or /foo44s/1.json
  def update
    respond_to do |format|
      if @foo44.update(foo44_params)
        format.html { redirect_to @foo44, notice: "Foo44 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo44 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo44.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo44s/1 or /foo44s/1.json
  def destroy
    @foo44.destroy
    respond_to do |format|
      format.html { redirect_to foo44s_url, notice: "Foo44 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo44
      @foo44 = Foo44.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo44_params
      params.require(:foo44).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
