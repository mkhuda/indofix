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

    def check(params, string)
      result = ''
      if (!params.nil? || !string.nil?)
        case params
          when 'nomina'
            result = check_nomina.nomina_x_an(string)
          when 'verba'
            result = check_verba.verba_x_an(string)
        end
        result[1]
      else
        raise(Error, "Indofix Error")
      end
    end

  end
end
