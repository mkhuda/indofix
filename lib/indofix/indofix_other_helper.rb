require 'verbal_expressions'

module Indofix
  class IndofixOtherHelper

    # id:Adjektiva (-an)‎
    def other_adjektiva_x_an (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (ber-)‎ 
    def other_adjektiva_ber_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'ber'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (ke-an)‎ 
    def other_adjektiva_ke_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (keter-an)‎ 
    def other_adjektiva_keter_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'keter'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (me-)‎ 
    def other_adjektiva_me_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (me-kan)‎ 
    def other_adjektiva_me_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adjektiva (se-)‎ 
    def other_adjektiva_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    # id:Adjektiva (ter-)‎
    def other_adjektiva_ter_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'ter'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adverbia (-an)‎ 
    def other_adverbia_x_an (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adverbia (se-)‎
    def other_adverbia_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Adverbia (se-nya)‎
    def other_adverbia_ke_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      @verex.match(string)
    end
    
    # id:Bilangan (se-)‎
    def other_bilangan_se_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
  end
end
