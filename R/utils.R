#' Create a standard set of folders for a QCoder project
#'
#' @param project_name  A string project name to be located in the
#'                      current working directory or a path to a project folder.
#' @param sample Logical that indicates that the sample data should be copied to the project.
#' @examples create_qcoder_project(project_name = "my_qcoder_project")
#' @export
create_qcoder_project<- function(project_name, sample = FALSE){
  dir.create(project_name)
  dir.create(paste0(project_name, "/documents"))
  dir.create(paste0(project_name, "/codes"))
  dir.create(paste0(project_name, "/data_frames"))
  dir.create(paste0(project_name, "/units"))
  if (sample){
    examples <- list.files(system.file("Example_Data_Markedup",  package = "qcoder"))
    examples <- paste0(system.file("Example_Data_Markedup/",  package = "qcoder"), examples)
    file.copy(from = examples,
              paste0(project_name, "/documents"), recursive = TRUE )
    file.copy(system.file("example_codes/example_codes.csv",  package = "qcoder"),
              paste0(project_name, "/codes"))
  }
  invisible(TRUE)
}

#' This launches the data-reader Shiny app
#'
#' @examples read_data()
#' @export
read_data <- function() {
  package_location <- system.file(package = "qcoder")
  shiny::runApp(paste0(package_location, "/shiny/data-reader"))
}

#' This launches the coder Shiny app
#'
#' @examples qcode_edit()
#' @export
qcode_edit <- function() {
  package_location <- system.file(package = "qcoder")
  shiny::runApp(paste0(package_location, "/shiny/qcoder-edit"))
}
