module GitMapper
  def branch_name
    @branch ||= 
      begin
        `git rev-parse --abbrev-ref HEAD`
      rescue
        nil
      end
  end
end
