-- Top failure reasons by API
SELECT 
    api_name,
    error_reason,
    COUNT(*) AS occurrences
FROM api_logs
WHERE status = 'fail'
GROUP BY api_name, error_reason
ORDER BY occurrences DESC;

-- Region-wise failure concentration
SELECT 
    region,
    COUNT(*) AS failures
FROM api_logs
WHERE status = 'fail'
GROUP BY region
ORDER BY failures DESC;
