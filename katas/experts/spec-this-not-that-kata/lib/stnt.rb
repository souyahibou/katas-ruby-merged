class SpecThisNotThat
  class << self

    # Returns true if the spec in the given file at the given line covers the given line of code
    def covers?(spec_filename, spec_line, code_filename, code_line)
      #TODO implement this!
    end

    # Returns the list of specs that cover the given line of code
    def specs(code_filename, code_line)
      #TODO implement this!
    end

    # Returns the list of specs that need to be run to cover the changes since the latest mapping
    def specs_for_changes
      #TODO implement this!
    end


    # Run the list of specs that need to be run to cover the changes since the latest mapping
    def run_all_specs_for_changes
      #TODO implement this!
    end

  end
end
