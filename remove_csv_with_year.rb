require 'csv'
csv_path = ARGV[0]
start_year = ARGV[1]
end_year = ARGV[2]

for row in CSV.open(csv_path, 'r')
  saved_row = []
  if (start_year..end_year).include?(row[1])
    saved_row << row
  end
  new_csv = CSV.open("panel_data_#{start_year}_#{end_year}.csv" , 'a')
  for row in saved_row
    new_csv << row
  end
end