# frozen_string_literal: true

require 'date'

def palindrome?(str)
  str == str.reverse
end

def dates_to_check
  palindrome_years = []
  1000.upto(10_000) do |year|
    year = year.to_s
    year.prepend year.reverse
    palindrome_years << year if palindrome? year
  end
  palindrome_years
end

def valid_month(arr)
  arr.filter! { |x| (x[0] + x[1]) > '00' && (x[0] + x[1]) < '13' }
end

def valid_day(arr)
  arr.filter! { |x| (x[2] + x[3]) > '00' && (x[2] + x[3]) < '32' }
end

def filter_date(arr)
  valid_month arr
  valid_day arr
end

def format_date(arr)
  arr.map { |x| x.insert(2, '/'); x.insert(5, '/') }
end

def valid_date?(date)
  date_format = '%m/%d/%Y'
  DateTime.strptime(date, date_format)
  true
rescue ArgumentError
  false
end

def solution
  arr = format_date(filter_date(dates_to_check))
  arr.filter(&method(:valid_date?))
end

puts solution
