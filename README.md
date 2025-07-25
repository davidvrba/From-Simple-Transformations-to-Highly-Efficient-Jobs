# From Simple Transformations to Highly Efficient Jobs

This is a code base that serves as acompanying content for Spark Training lectured and prepared by David Vrba. It is a two days course that covers Apache Spark from three different perspectives:

1. The core part is the programming interface of DataFrame API (in Spark 3.5)
2. The internal processes of Spark SQL and execution layer together with various performance tips
3. APIs of ML Pipelines and GraphFrames for advanced analytics

The course is offered in Python language and Scala version is being prepared. The Python version is taught in Jupyter notebook environment, while Scala version in Apache Zeppelin. See the installation notes for the complete stack used througout the course.

## Training Format
* 2 days
* 50% theory, 50% hands on
* Language: Python

## Objectives of the training is to learn:
* Basic concepts of Apache Spark and distributed computing
* How to use DataFrame API in Spark for ETL jobs or ad hoc data analysis
* How the DataFrame API works under the hood
* How the optimization engine works in Spark
* What is happening under the cover when you send a query for execution
* How is Spark application executed
* How to understand query plans and use that information to optimize queries
* Basic concepts of ML Pipelines library for machine learning
* Basic concepts of GraphFrames library for graph processing
* How to process data in (nearly) real time in Spark (Structured Streaming)
* News in Spark 3.0, 3.5


## Training Outline
1. Introduction to Apache Spark
    * High level introduction to Spark
    * Introduction to Spark architecture
    * Spark APIs: high level vs low level vs internal APIs
2. Structured APIs in Spark
    * Basic concepts of DataFrame API
    * DataFrame, Row, Column
    * Operations in SparkSQL: transformations, actions
    * Working with DataFrame: creating a DataFrame and basic transformations
    * Working with different data types (Integer, String, Date, Timestamp, Boolean)
    * Filtering
    * Conditions
    * Dealing with null values
    * Joins
3. Lab I
    * Simple ETL
4. Advanced transformations with DataFrames
    * Aggregations and Window functions
    * User Defined Functions
    * Higher Order Functions and complex data types (news in Spark 2.4)
5. Lab II
    * Analyzing data using DataFrame API
6. Metastore and Tables
    * Catalog API
    * Tables management
    * Saving data
    * Caveats to be careful about
7. Lab III
    * Saving data and working with tables
8. Introduction to internal processes in Spark SQL
    * Catalyst - Optimization engine in Spark
    * Logical Planning
    * Physical Planning
9. Execution Layer
    * Introduction to low level APIs: RDDs
    * Structure of Spark job (Stages, Tasks, Shuffle)
    * DAG Scheduler
    * Lifecycle of Spark application
10. Lab III
    * Spark UI
11. Introduction to performance tuning in Spark
    * Data persistence: caching, checkpointing
    * Bucketing & Partitioning
    * Most often bottlenecks in Spark applications
    * Optimization tips
12. Introduction to advanced analytics in Spark
    * Machine learning: basic concepts of ML Pipelines
    * Graph processing: basic concepts of GraphFrames library
13. Lab V
    * Machine learning & Graph processing
14. Structured Streaming
    * Basic concepts of streaming in Spark
    * Stateful vs stateless transformations
    * Event time processing
    * What is watermark and how to use it to close the state
    * Real time vs near real time processing


For more information about the training you can contact directly the lecturer via [LinkedIn](http://www.linkedin.com/in/vrba-david).

Data for the training are downloaded from the [Stack Exchange database](https://archive.org/details/stackexchange).