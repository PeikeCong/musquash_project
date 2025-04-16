#' Calculate Shannon Diversity Index
#'
#' This function calculates the Shannon diversity index for each set_id
#' based on species counts.
#'
#' @param data A data frame containing species count data
#' @param species_col Column name containing species names
#' @param count_col Column name containing count values
#' @param group_by_cols Column names to group by (e.g., set_id)
#'
#' @return A data frame with Shannon diversity indices and species richness
#' @export
#'
#' @examples
#' \dontrun{
#' benthos_data <- read.csv("path/to/benthos_data.csv", encoding = "latin1")
#' shannon_results <- calculate_shannon_index(
#'   benthos_data,
#'   "scientificName_Nom_scientifique",
#'   "total_count",
#'   "set_id"
#' )
#' }
calculate_shannon_index <- function(data, species_col, count_col, group_by_cols) {
  # Check required packages
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package 'dplyr' is needed for this function to work. Please install it.",
         call. = FALSE)
  }
  if (!requireNamespace("vegan", quietly = TRUE)) {
    stop("Package 'vegan' is needed for this function to work. Please install it.",
         call. = FALSE)
  }

  # Ensure columns exist
  if (!all(c(species_col, count_col) %in% names(data))) {
    stop("Species column or count column not found in data")
  }

  # Convert group_by_cols to character vector if it's not already
  if (!is.character(group_by_cols)) {
    group_by_cols <- as.character(group_by_cols)
  }

  # Check if group_by columns exist
  if (!all(group_by_cols %in% names(data))) {
    stop("One or more grouping columns not found in data")
  }

  # Calculate Shannon index
  result <- data %>%
    dplyr::group_by_at(c(group_by_cols, species_col)) %>%
    dplyr::summarise(count = sum(!!dplyr::sym(count_col)), .groups = "drop") %>%
    dplyr::group_by_at(group_by_cols) %>%
    dplyr::summarise(
      shannon_index = vegan::diversity(count, index = "shannon"),
      species_richness = dplyr::n(),
      .groups = "drop"
    )

  return(result)
}
