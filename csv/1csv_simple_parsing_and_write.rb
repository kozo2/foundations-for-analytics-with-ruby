input_file = ARGV[0]
#output_file = ARGV[1]

File.open(input_file, 'r') do |filereader|
  p filereader.class
  header = filereader.readline
  header = header.strip
  header_list = header.split(',')
  p header_list
  filereader.each do |row|
    row = row.strip()
    row_list = row.split(',')
    p row_list
  end
end
