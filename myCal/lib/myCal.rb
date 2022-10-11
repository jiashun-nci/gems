# frozen_string_literal: true

# My simple calculator with gem

require_relative "myCal/version"

module MyCal
  class Error < StandardError; end

  # define add function
  def self.add(n1, n2)
    return n1+n2  # return result of addition
  end ## end of function

  # define sub function
  def self.sub(n1, n2)
    return n1-n2 # return result of suntraction
  end ## end of function

  # define mtp function
  def self.mtp(n1, n2)
    return n1*n2    # return result of multiplication
  end ## end of function

  # define div function
  def self.div(n1, n2)
    n1 = n1.to_f # convert number to flaot
    n2 = n2.to_f  # convert number to flaot
    if n2 == 0  ## check n2 is equal to zero or not
      return "Divisor can't be zero!"
    else
      return (n1/n2)# return result of division
    end  ## end of if

  end ## end of function

end
