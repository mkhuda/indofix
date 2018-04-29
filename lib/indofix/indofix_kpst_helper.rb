require 'verbal_expressions'

module Indofix
  class IndofixKpstHelper
    
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
      @verex.match(string)
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
      @verex.match(string)
    end
    
    # pelepasan imbuhan 'me' dengan 'nge'
    def imbuhan_nge_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'nge'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # pelepasan imbuhan 'me' dengan 'ny'
    def imbuhan_ny_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'ny'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    # pelepasan imbuhan 'me' dengan 'm'
    def imbuhan_m_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'm'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      @verex.match(string)
    end
    
    private
    # auto processing
    # pemroresan pelepasan n -> ng(nge)/ny, m
    def process_imbuhan_n_ng(match)
      @match = match
      if !@match.nil?
        @string = @match[1]
        if !imbuhan_n_x(@string).nil?
          if !imbuhan_ng_x(@string).nil?
            if !imbuhan_nge_x(@string).nil?
              imbuhan_nge_x(@string)
            else
              imbuhan_ng_x(@string)
            end
          elsif !imbuhan_ny_x(@string).nil?
            imbuhan_ny_x(@string)
          else
            imbuhan_n_x(@string)
          end
        elsif !imbuhan_m_x(@string).nil?
          imbuhan_m_x(@string)
        else
          @match
        end
      else
        @match
      end
    end
    
    # TODO: next
    def process_ktsp(match)
      @match = match
      if !@match.nil?
        @string = @match[1]
      else
        @match
      end
    end
    
  end
end
