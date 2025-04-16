test_that("shannon index calculation works", {
  # Create test data
  test_data <- data.frame(
    set_id = c(1, 1, 1, 2, 2),
    scientificName_Nom_scientifique = c("A", "B", "C", "A", "B"),
    total_count = c(10, 5, 2, 8, 3)
  )

  # Calculate Shannon index
  result <- calculate_shannon_index(
    test_data,
    "scientificName_Nom_scientifique",
    "total_count",
    "set_id"
  )

  # Check results
  expect_equal(nrow(result), 2)  # Should have 2 set_ids
  expect_true(all(c("shannon_index", "species_richness") %in% names(result)))
  expect_true(all(result$shannon_index > 0))  # Shannon index should be positive
})
