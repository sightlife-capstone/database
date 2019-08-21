CREATE TABLE hist_data_dump (

    histDataDumpID SERIAL  PRIMARY KEY,

    eye_bank_id    INTEGER NOT NULL,
    metric_id      INTEGER NOT NULL,
    date_start     DATE    NOT NULL,
    date_end       DATE    NOT NULL,
    measure        NUMERIC

);


SELECT * FROM hist_data_dump


INSERT INTO eyebank_metric(startdate, enddate, eyebankid, metricid, measure)
    SELECT date_start, date_end, eye_bank_id, metric_id, measure
    FROM hist_data_dump