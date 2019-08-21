CREATE TABLE edc_data_dump (

    edcDataDumpID SERIAL  PRIMARY KEY,

    eye_bank_id   INTEGER NOT NULL,
    metric_id     INTEGER NOT NULL,
    date_start    DATE    NOT NULL,
    date_end      DATE    NOT NULL,
    edc_num       NUMERIC

);

INSERT INTO eyebank_metric(eyebankid, metricid, startdate, enddate, measure)
    SELECT eye_bank_id, metric_id, date_start, date_end, edc_num
    FROM edc_data_dump

