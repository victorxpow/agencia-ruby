def screening(date)
  birthday = Time.parse date
  room_one = Time.now - 25.years - 2.months - 15.days
  room_two = Time.now - 45.years - 1.months
  room_three = Time.now - 65.years

  return 'Sala 1' if birthday > room_one
  return 'Sala 2' if birthday < room_one and birthday > room_two
  return 'Sala 3' if birthday < room_two and birthday > room_three
  'Sala 4'
end
