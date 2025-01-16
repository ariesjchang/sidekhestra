# frozen_string_literal: true

module Kiqchestra
  # The ProgressStore class serves as an abstract base class for implementing custom
  # storage mechanisms for workflow progress in Kiqchestra. It defines two
  # abstract methods (`read_progress` and `write_progress`) that must be implemented
  # by subclasses.
  #
  # This allows flexibility in how progress is stored, enabling users to choose
  # between file-based, Redis-based, or any other storage system.
  #
  # Methods:
  # - `read_progress(workflow_id)`: Reads cached progress for a specific workflow.
  # - `write_progress(workflow_id, progress)`: Caches the progress for a specific workflow.
  class ProgressStore
    # Ensures subclasses properly implement required methods.
    def initialize(*_args)
      # No initialization logic here
    end

    def read_progress
      raise NotImplementedError, "Subclasses must implement this method"
    end

    def write_progress(progress)
      raise NotImplementedError, "Subclasses must implement this method"
    end
  end
end