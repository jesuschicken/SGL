json.array!(@resumes) do |resume|
  json.extract! resume, :id, :resume_rute
  json.url resume_url(resume, format: :json)
end
