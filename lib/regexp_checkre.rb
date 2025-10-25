print 'Text?: '
text = gets.chomp

begin
  print 'Pattren?: '
  pattren = gets.chomp
  regexp = Regexp.new(pattren)
rescue RegexpError => e
  puts "Invelid pattern: #{e.message}"
  retry
end
matches = text.scan(regexp)
if !matches.empty?
  puts "matched: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end
