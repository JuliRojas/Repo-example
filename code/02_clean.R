# We can rename several columns by creating a vector where each entry corresponds 
# to the name of a column and its index corresponds to the new name we want to assign.
text_vars <- c('num_age' = 'age', 'bin_male' = 'sex', 'bin_employed' = 'ocu', 
               'bin_formal' = 'formal', 'num_hoursWorked' = 'totalHoursWorked', 
               'num_labIncome' = 'y_total_m')
db_geih <- db_geih |>
  select(all_of(text_vars)) |> 
  filter(num_age >= 18,
         bin_employed == 1) |> 
  # The logical variable `bin_employed` and the age are used to define the sample 
  # and then removed.
  select(-c('num_age', 'bin_employed')) |> 
  mutate(bin_male = factor(bin_male, levels = 0:1, labels = c('Female', 'Male')),
         bin_formal = factor(bin_formal, levels = 0:1, labels = c('Informal', 'Formal')))

# Given our data handling, let's check again the distribution.
db_geih |> skimr::skim()

db_geih <- db_geih |> drop_na()
