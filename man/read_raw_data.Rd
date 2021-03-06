% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_in_files.R
\name{read_raw_data}
\alias{read_raw_data}
\title{Create a data frame of documents}
\usage{
read_raw_data(folder_path = "/documents/",
  data_frame_name = "data_frames/qcoder_documents", project_name)
}
\arguments{
\item{path}{to a folder contain text files to be analyzed.}

\item{The}{name of the RDS file that the data frame will be stored in.}
}
\description{
Create a data frame of documents
}
\examples{
fp <-"/documents/"
dfn <- "testdata"
read_raw_data(fp, dfn)
}
