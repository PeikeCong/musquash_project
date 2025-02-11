## Data Preprocessing

1. **Merging Datasets**  
   - Performed an inner join on `df1`, `df2`, and `df3` using **`merge_data.ipynb`**.  
   - The merged dataset is saved as **`final_merged_data_no_replicates.csv`**.

2. **Shannon Diversity Index Calculation & Data Cleaning**  
   - Calculated the Shannon Diversity Index and cleaned the merged dataset using **`shannon.ipynb`**.  
   - The processed dataset is saved as **`filtered_data.csv`**.

---

## Exploratory Data Analysis

1. **Dataset Overview**  
   - Provided a general overview of the four datasets in **`data_overview.ipynb`**.

2. **Location Preprocessing & GLM Modeling**  
   - Explored station locations and applied a Generalized Linear Model (GLM) to analyze the relationship between sediment properties and the total biomass per station in **`location_preprocessing.ipynb`**.  
   - The GLM results showed a poor model fit.
