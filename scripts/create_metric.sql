-- Add metrics to the database

/*
 * NOTE:
 * Make sure you execute all these commands on the "dev_performace_metrics"
 * database.
 */


/* Look up available metric types */

SELECT metrictypename, metrictypeid FROM metric_type


/*
 * NOTE:
 * In the command below, replace {Metric Name} with the name of the new metric
 * surrounded by single quotes ('), and {Metric Type ID} with the number
 * corresponding to the appropriate metric type (no quotes).
 * Then, execute the two lines together.
 *
 * NOTE:
 * If the name of the new metric includes an apostrophe (single quote), that
 * apostrophe must be doubled. For example: 'Bob''s new metric'. This is due
 * to postgres using single quotes to start and end strings.
 */

INSERT INTO metric(metricname, metrictypeid)
VALUES ({Metric Name}, {Metric Type ID});
