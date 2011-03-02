class Task < ActiveRecord::Base
	Task.include_root_in_json = false
end
