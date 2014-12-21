json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :legal_affair_id, :milestone_status_id, :milestone_type_id, :milestone_date_in, :milestone_date_out, :milestone_log
  json.url milestone_url(milestone, format: :json)
end
