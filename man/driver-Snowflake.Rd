% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/driver-snowflake.R
\name{odbcConnectionColumns_,Snowflake,character-method}
\alias{odbcConnectionColumns_,Snowflake,character-method}
\alias{dbExistsTableForWrite,Snowflake,character-method}
\title{Connecting to Snowflake via ODBC}
\usage{
\S4method{dbExistsTableForWrite}{Snowflake,character}(conn, name, ..., catalog_name = NULL, schema_name = NULL)
}
\arguments{
\item{conn}{A \link[DBI:DBIConnection-class]{DBI::DBIConnection} object,
as returned by \code{\link[DBI:dbConnect]{dbConnect()}}.}

\item{name}{The table name, passed on to \code{\link[DBI:dbQuoteIdentifier]{dbQuoteIdentifier()}}. Options are:
\itemize{
\item a character string with the unquoted DBMS table name,
e.g. \code{"table_name"},
\item a call to \code{\link[DBI:Id]{Id()}} with components to the fully qualified table name,
e.g. \code{Id(schema = "my_schema", table = "table_name")}
\item a call to \code{\link[DBI:SQL]{SQL()}} with the quoted and fully qualified table name
given verbatim, e.g. \code{SQL('"my_schema"."table_name"')}
}}

\item{...}{Other parameters passed on to methods.}

\item{catalog_name, schema_name}{Catalog and schema names.}
}
\description{
\subsection{\code{odbcConnectionColumns()}}{

If the catalog, or the schema arguments are NULL, attempt to infer
by querying for CURRENT_DATABASE() and CURRENT_SCHEMA().  We do this
to aid with performance, as the SQLColumns method is more performant
when restricted to a particular DB/schema.
}
}
