function transform( file )

data = csvread(file)
ms = averageDimensions(data)
csvwrite(file, ms)

end