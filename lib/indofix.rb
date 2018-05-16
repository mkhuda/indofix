require "indofix/version"
require "indofix/indofix_nomina_helper"
require "indofix/indofix_other_helper"
require "indofix/indofix_verba_helper"
require "indofix/indofix_kpst_helper"
require "indofix/errors"

module Indofix
  class << self

    def welcome
      "Welcome to Indofix"
    end

    def check_nomina
      @check_nomina ||= IndofixNominaHelper.new
    end

    def check_verba
      @check_verba ||= IndofixVerbaHelper.new
    end

    def check_kpst
      @check_kpst ||= IndofixKpstHelper.new
    end

    def check_other
      @check_other ||= IndofixOtherHelper.new
    end

    def error
      @error ||= Error.new
    end
    
    # Let's start check
    #
    # options:
    # * nomina
    # * verba
    # * other
    # * kpst
    def check(params, string)
      @result = {}
      if (!params.empty? || !string.empty?)
        case params
          when 'nomina'
            @result = nomina_probe(string)
          when 'verba'
            @result = verba_probe(string)
          when 'other'
            @result = other_probe(string)
          when 'kpst'
            @result = kpst_probe(string)
        end
        @result.keys
      else
        raise(error, "Params and String cannot Empty")
      end
    end

    # Let's check all possibilities at once
    #
    # Params String
    # Return Hash
    def stupid_check(string)
      @result = {}
      if !string.empty?
        @nomina = nomina_probe(string)
        @verba = verba_probe(string)
        @other = other_probe(string)
        @kpst = kpst_probe(string)
        hashes = [@nomina, @verba, @other, @kpst]

        @result = Hash[*hashes.map(&:to_a).flatten]
      else
        raise(error, "String cannot empty/nil")
      end
    end

    # Check probability for Nomina 
    # Return Hash
    def nomina_probe(string)
      nomina = check_nomina.methods.grep(/nomina/)
      @detected = Hash.new
      nomina.each do |method|
        transform = check_nomina.send(method, string)
        @detected[transform[1]] = method.to_s unless transform.nil?
      end
      return @detected
    end

    # Check probability for KPST
    # Return Hash
    def kpst_probe(string)
      kpst = check_kpst.methods.grep(/imbuhan/)
      @detected = Hash.new
      kpst.each do |method|
        transform = check_kpst.send(method, string)
        @detected[transform[1]] = method.to_s unless transform.nil?
      end
      return @detected
    end

    # Check probability for Verba 
    # Return Hash
    def verba_probe(string)
      verba = check_verba.methods.grep(/verba/)
      @detected = Hash.new
      verba.each do |method|
        transform = check_verba.send(method, string)
        @detected[transform[1]] = method.to_s unless transform.nil?
      end
      return @detected
    end

    # Check probability for Others
    # Return Hash
    def other_probe(string)
      other = check_other.methods.grep(/other/)
      @detected = Hash.new
      other.each do |method|
        transform = check_other.send(method, string)
        @detected[transform[1]] = method.to_s unless transform.nil?
      end
      return @detected
    end

  end
end
