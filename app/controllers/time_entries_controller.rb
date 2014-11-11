class TimeEntriesController < ApplicationController
	def create
		e = Employee.find params[:employee_id]
		t = e.time_entries.create(time_entries_params)
		redirect_to employee_path(e)
	end

	private

		def time_entries_params
			params.require(:time_entry).permit(:time, :account_id, :state)
		end
end
