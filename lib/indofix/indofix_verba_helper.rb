require 'verbal_expressions'

module Indofix
  class IndofixVerbaHelper
    
    # id:Verba (-an)‎ 
    def verba_x_an(string)
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
    
    # id:Verba (-i)‎ 
    def verba_x_i(string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (-kan)‎
    def verba_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (-kanlah)‎
    def verba_x_kanlah(string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'kanlah'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (-lah)‎
    def verba_x_lah(string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'lah'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ber-)‎ 
    def verba_ber_x(string)
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
    
    # id:Verba (ber-an)‎ 
    def verba_ber_x_an(string)
      @verex = VerEx.new do
        start_of_line
        find 'ber'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ber-kan)
    def verba_ber_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'ber'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (di-)‎ 
    def verba_di_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'di'
        begin_capture
        anything
        end_capture
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (di-i)‎ 
    def verba_di_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'di'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (di-kan)‎ 
    def verba_di_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'di'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (diper-)‎
    def verba_diper_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'diper'
        begin_capture
        anything
        end_capture
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (diper-i)
    def verba_diper_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'diper'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (diper-kan)‎ 
    def verba_diper_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'diper'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (kau-)‎
    def verba_kau_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'kau'
        begin_capture
        anything
        end_capture
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (kau-i)‎
    def verba_kau_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'kau'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (kau-kan)‎ 
    def verba_kau_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'kau'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ke-an)‎
    def verba_ke_x_an(string)
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
    
    # id:Verba (ku-)‎
    def verba_ku_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'ku'
        begin_capture
        anything
        end_capture
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ku-i)‎
    def verba_ku_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'ku'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ku-kan)‎
    def verba_ku_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'ku'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (me-)‎ 
    def verba_me_x(string)
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
    
    # id:Verba (me-i)
    def verba_me_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (me-kan)‎ 
    def verba_me_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (memper-)‎ 
    def verba_memper_x(string)
      @verex = VerEx.new do
        start_of_line
        find 'memper'
        begin_capture
        anything
        end_capture
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (memper-i)‎ 
    def verba_memper_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'memper'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (memper-kan)‎ 
    def verba_memper_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'memper'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (per-kan)
    def verba_per_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'per'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (plural -an)‎ 
    def verbaplural_x_an(string)
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
    
    # id:Verba (plural ber-)‎ 
    def verbaplural_ber_x(string)
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
    
    # id:Verba (plural ber-an)‎ 
    def verbaplural_ber_x_an(string)
      @verex = VerEx.new do
        start_of_line
        find 'ber'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (plural me-)‎ 
    def verbaplural_me_x(string)
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
    
    # id:Verba (plural me-i)‎ 
    def verbaplural_me_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (plural me-kan)‎ 
    def verbaplural_me_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'me'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (plural ter-)‎ 
    def verbaplural_ter_x(string)
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
    
    # id:Verba (ter-)
    def verba_ter_x(string)
      @verex = VerEx.new do
        find 'ter'
        begin_capture
        anything
        end_capture
      end
     @verex.match(string)
    end
    
    # id:Verba (ter-i)‎
    def verba_ter_x_i(string)
      @verex = VerEx.new do
        start_of_line
        find 'ter'
        begin_capture
        anything
        end_capture
        find 'i'
        end_of_line
      end
     @verex.match(string)
    end
    
    # id:Verba (ter-kan)‎
    def verba_ter_x_kan(string)
      @verex = VerEx.new do
        start_of_line
        find 'ter'
        begin_capture
        anything
        end_capture
        find 'kan'
        end_of_line
      end
     @verex.match(string)
    end
    
  end
end
