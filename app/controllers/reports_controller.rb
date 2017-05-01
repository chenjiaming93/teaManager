class ReportsController < ApplicationController
	def report_params
      params.require(:report).permit(:title,:report_type,:issue_date,:issue_id)
    end
	def index
		@reports=Report.find(:all)
	end

	def show
		@report=Report.find(params[:id])
	end

	def create
		report=Report.create(params[:report])
		redirect_to report_path(report)
	end

	def new
		@report=Report.new
	end

	def edit
		@report=Report.find(paramsp[:id])
	end

	def update
		report=report.find(paramsp[:id])
		report.update_attributes(params[:report])
		redirect_to report_path(report)
	end

end
