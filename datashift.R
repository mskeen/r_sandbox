library("ggvis")
library("datashiftr")

api_key = "b0e0af"
# datafiles_list(api_key=api_key)

cpu_data = datafile_content(api_key, "ibnQOH")

cpu_data %>% ggvis(~cpu, ~users) %>% layer_smooths()

print("done")
