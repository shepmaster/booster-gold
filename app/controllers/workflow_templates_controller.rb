class WorkflowTemplatesController < ApplicationController
  before_action :set_workflow_template, only: %i[ show edit update destroy ]

  # GET /workflow_templates or /workflow_templates.json
  def index
    # URL that the search hits:
    # http://localhost:3000/workflow_templates?workflow_template_filter_form%5Bsearch%5D=Second

    @workflow_templates_filter_form = WorkflowTemplatesFilterForm.new(workflow_templates_filter_params)
    # Just testing the query and turbo, we will want a Form and Query object here.
    # Also, that param of "/workflow_templates" is weird, but I'm just using the current
    # form that was configured for the search component.
    if @workflow_template_filter_form.search.present?
      workflow_templates_arel = WorkflowTemplate.arel_table
      @workflow_templates = WorkflowTemplate.where(workflow_templates_arel[:name].matches("%#{@workflow_template_filter_form.search}%"))
    else
      @workflow_templates = WorkflowTemplate.all
    end
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
