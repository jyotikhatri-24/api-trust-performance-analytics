CREATE TABLE api_logs (
    timestamp      TIMESTAMP,
    api_name        VARCHAR(50),
    api_version     VARCHAR(10),
    region          VARCHAR(20),
    document_type   VARCHAR(30),
    client_type     VARCHAR(30),
    status          VARCHAR(10),
    status_code     INT,
    latency_ms      INT,
    error_reason    VARCHAR(50)
);