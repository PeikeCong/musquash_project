#' Preprocess MPA Data
#'
#' This function preprocesses the Musquash MPA data by calculating derived variables
#' and handling missing values.
#'
#' @param data A data frame containing MPA data
#' @param impute_missing Logical, whether to impute missing values (default: FALSE)
#'
#' @return A preprocessed data frame
#' @export
#'
#' @examples
#' \dontrun{
#' mpa_data <- read.csv("path/to/MPA_merged.csv")
#' processed_data <- preprocess_mpa_data(mpa_data)
#' }
preprocess_mpa_data <- function(data, impute_missing = FALSE) {
  # Check required packages
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("Package 'dplyr' is needed for this function to work. Please install it.",
         call. = FALSE)
  }

  # Calculate derived variables
  result <- data %>%
    dplyr::mutate(
      # Calculate water content ratio if not already present
      water_content_ratio = ifelse(
        is.na(water_content_ratio) & !is.na(wet_weight) & !is.na(dry_weight),
        (wet_weight - dry_weight) / wet_weight,
        water_content_ratio
      )
    )

  # Impute missing values if requested
  if (impute_missing) {
    # Simple imputation by strata and season
    result <- result %>%
      dplyr::group_by(strata_strate, season_saison) %>%
      dplyr::mutate(
        across(
          c(wet_weight, dry_weight, water_content_ratio,
            sand_pct, fine_sand_pct, silt_clay_pct),
          ~ifelse(is.na(.), mean(., na.rm = TRUE), .)
        )
      ) %>%
      dplyr::ungroup()
  }

  return(result)
}
