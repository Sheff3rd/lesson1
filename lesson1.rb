require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.scan(/\d/).map!(&:to_i).inject(:+)
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      today = Date.today
      birthday = Date.parse(birthday)
      age = today.year - birthday.year
      ld = (age * 365) + birthday.yday
      "Я живу #{age} лет или #{ld} дней или #{ld * 24}
       часов или #{ld * 1440} минут или #{ld * 85_400} секунд"
    end
  end

  def name
    pib = gets
    "Hello #{pib} Super Man!"
  end
end
