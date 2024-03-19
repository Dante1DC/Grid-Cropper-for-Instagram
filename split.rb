require 'chunky_png'

def divide_image(file, columns, rows)
  original = ChunkyPNG::Image.from_file(file)

  piece_width = original.width / columns
  piece_height = original.height / rows

  Dir.mkdir('cropped_images') unless File.exist?('cropped_images')

  rows.times do |row|
    columns.times do |column|
      x0 = column * piece_width
      y0 = row * piece_height

      cropped = original.crop(x0, y0, piece_width, piece_height)

      filename = "cropped_images/#{row}_#{column}.png"
      cropped.save(filename)
      puts "Saved #{filename}"
    end
  end
end

if ARGV.length != 2
  puts "Usage: ruby split.rb <image_file.png> <columns>x<rows>"
  exit
end

file = ARGV[0]
columns, rows = ARGV[1].split('x').map(&:to_i)

divide_image(file, columns, rows)
