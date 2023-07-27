SELECT (sum(completed_at - started_at)) / (count(completed_at)) AS average_assistance_request_duration
FROM assistance_requests;
