class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def create
		e = Employee.create(employee_params)
		redirect_to employee_path(e)
	end

	private
		def employee_params
			params.require(:employee).permit(:name)
		end
end
