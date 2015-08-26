class AttributeReferencesController < ApplicationController
  before_action :set_attribute_reference, only: [:show, :edit, :update, :destroy]

  # GET /attribute_references
  # GET /attribute_references.json
  def index
    @attribute_references = AttributeReference.all
  end

  # GET /attribute_references/1
  # GET /attribute_references/1.json
  def show
  end

  # GET /attribute_references/new
  def new
    @attribute_reference = AttributeReference.new
  end

  # GET /attribute_references/1/edit
  def edit
  end

  # POST /attribute_references
  # POST /attribute_references.json
  def create
    @attribute_reference = AttributeReference.new(attribute_reference_params)

    respond_to do |format|
      if @attribute_reference.save
        format.html { redirect_to @attribute_reference, notice: 'Attribute reference was successfully created.' }
        format.json { render :show, status: :created, location: @attribute_reference }
      else
        format.html { render :new }
        format.json { render json: @attribute_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_references/1
  # PATCH/PUT /attribute_references/1.json
  def update
    respond_to do |format|
      if @attribute_reference.update(attribute_reference_params)
        format.html { redirect_to @attribute_reference, notice: 'Attribute reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribute_reference }
      else
        format.html { render :edit }
        format.json { render json: @attribute_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_references/1
  # DELETE /attribute_references/1.json
  def destroy
    @attribute_reference.destroy
    respond_to do |format|
      format.html { redirect_to attribute_references_url, notice: 'Attribute reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_reference
      @attribute_reference = AttributeReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_reference_params
      params[:attribute_reference]
    end
end
