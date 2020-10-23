puts 'Creating teachers...'

Teacher.create!({
  name: "Sy Rashid",
  campus: "Istanbul"
})
Teacher.create!({
  name: "Nico",
  campus: "Barcelona"
})
Teacher.create!({
  name: "Yair",
  campus: "Israel"
})

puts 'Finished!'
