require "indofix/version"
require "indofix/indofix_nomina_helper"
require "indofix/indofix_other_helper"
require "indofix/indofix_verba_helper"
require "indofix/indofix_kpst_helper"

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
    
    # Let's start check
    # options:
    # * nomina
    # * verba
    # * other
    # * kpst
    def check(params, string)
      @result = {}
      if (!params.nil? || !string.nil?)
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
        raise(Error, "Indofix Error")
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
        @detected[transform] = method.to_s unless transform.nil?
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
        @detected[transform] = method.to_s unless transform.nil?
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
