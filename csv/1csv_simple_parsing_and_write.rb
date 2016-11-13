input_file = ARGV[0]
output_file = ARGV[1]

File.open(input_file, "r") do |filereader|
  File.open(output_file, "w") do |filewriter|
    header = filereader.readline
    header = header.strip
    header_list = header.split(",")
    p header_list
    filewriter.write(header_list.join(',')+"\n")
    filereader.each do |row|
      row = row.strip()
      row_list = row.split(",")
      p row_list
      filewriter.write(row_list.join(",")+"\n")
    end
  end
end
