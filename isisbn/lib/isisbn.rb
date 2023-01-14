# frozen_string_literal: true

require_relative "isisbn/version"

module Isisbn
  class Error < StandardError; end

  # validate ISBN number
  def self.validate(isbn)
    length = isbn.length # get length of isbn number

    if length == 10   # if length is 10 
      validate10(isbn)  # validate the isbn number
    elsif length == 13  # if length is 10
      validate13(isbn)  # validate the isbn number
    else # others return false
      return false
    
    end

  end

  # define validate10 to check the isbn number with 10 digits.
  def self.validate10(isbn)
    sum = 0
    for i in 0..9 # loop each digit of the isbn number
      sum = sum + ( isbn[i].to_i * (10-i) ) # sum of the (each digit * position index)
    end

    if sum % 11 == 0  # if remainer is 0, then it is valid isbn number
      return true
    else
      return false
    end

  end

  # define validate13 to check the isbn number with 13 digits
  def self.validate13(isbn)
    sum = 0
    for i in 0..12
      if (13-i) % 2 == 1
        sum = sum + isbn[i].to_i * 1  # odd position, multiply by 1
      else
        sum = sum + isbn[i].to_i * 3  # even position, multiply by 3
      end
    end

    if sum % 10 == 0  # if remainer is 0, then it is valid isbn number
      return true
    else
      return false
    end

  end

end
