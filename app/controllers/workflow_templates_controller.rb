class WorkflowTemplatesController < ApplicationController
  before_action :set_workflow_template, only: %i[ show edit update destroy ]

  # GET /workflow_templates or /workflow_templates.json
  def index
    @workflow_templates_filter_form = WorkflowTemplatesFilterForm.new(workflow_templates_filter_params)

    @workflow_templates = WorkflowTemplatesQuery.new(@workflow_templates_filter_form).results
  end

  # GET /workflow_templates/1 or /workflow_templates/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        send_file 'public/robots.txt'
      end
    end
  end

  # GET /workflow_templates/new
  def new
    @workflow_template = WorkflowTemplate.new
  end

  # GET /workflow_templates/1/edit
  def edit
  end

  # POST /workflow_templates or /workflow_templates.json
  def create
    @workflow_template = WorkflowTemplate.new(workflow_template_params)

    respond_to do |format|
      if @workflow_template.save
        format.turbo_stream  # only to keep the "stay-in-place"... maybe?  But we wanna clear...
        format.html { redirect_to @workflow_template, notice: "Workflow template was successfully created." }
        format.json { render :show, status: :created, location: @workflow_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workflow_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workflow_templates/1 or /workflow_templates/1.json
  def update
    respond_to do |format|
      if @workflow_template.update(workflow_template_params)
        format.html { redirect_to @workflow_template, notice: "Workflow template was successfully updated." }
        format.json { render :show, status: :ok, location: @workflow_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workflow_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workflow_templates/1 or /workflow_templates/1.json
  def destroy
    @workflow_template.destroy
    respond_to do |format|
      format.html { redirect_to workflow_templates_url, notice: "Workflow template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow_template
      @workflow_template = WorkflowTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workflow_template_params
      params.require(:workflow_template).permit(:name, :description)
    end

    def workflow_templates_filter_params
      params.fetch(:filter, {}).permit(:search)
    end
end
