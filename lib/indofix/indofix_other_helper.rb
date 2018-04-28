require 'verbal_expressions'

module Indofix
  class IndofixOtherHelper

    # id:Adjektiva (-an)‎
    def adjektiva_x_an (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adjektiva (ber-)‎ 
    def adjektiva_ber_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'ber'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adjektiva (ke-an)‎ 
    def adjektiva_ke_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adjektiva (keter-an)‎ 
    def adjektiva_keter_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'keter'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adjektiva (me-)‎ 
    def adjektiva_me_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return process_imbuhan_n_ng(@verex.match(string))
    end
    
    # id:Adjektiva (me-kan)‎ 
    def adjektiva_me_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return process_imbuhan_n_ng(@verex.match(string))
    end
    
    # id:Adjektiva (se-)‎ 
    def adjektiva_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    # id:Adjektiva (ter-)‎
    def adjektiva_ter_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'ter'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adverbia (-an)‎ 
    def adverbia_x_an (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adverbia (se-)‎
    def adverbia_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Adverbia (se-nya)‎
    def adverbia_ke_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Bilangan (se-)‎
    def bilangan_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    private 
    # pelepasan imbuhan 'me' dengan 'n'
    def imbuhan_n_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'n'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # pelepasan imbuhan 'me' dengan 'ng'
    def imbuhan_ng_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'ng'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # pemroresan pelepasan n dan ng
    def process_imbuhan_n_ng(match)
      @match = match
      if !@match.nil?
        @string = @match[1]
        if !imbuhan_n_x(@string).nil?
          if !imbuhan_ng_x(@string).nil?
            return imbuhan_ng_x(@string)
          else
            return imbuhan_n_x(@string)
          end
        else
          return @match
        end
      else
        return @match
      end
    end
    
  end
end
