require 'verbal_expressions'

module Indofix
  class IndofixNominaHelper

    # id:Nomina (-an)‎
    def nomina_x_an (string)
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
    
    # id:Nomina (-ku)‎
    def nomina_x_ku (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'ku'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (-mu)‎
    def nomina_x_mu (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'mu'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (-nya)‎ 
    def nomina_x_nya (string)
      @verex = VerEx.new do
        start_of_line
        begin_capture
        anything
        end_capture
        find 'nya'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-)‎ 
    def nomina_ke_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-an)‎
    def nomina_ke_x_an (string)
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
    
    # id:Nomina (ke-anku)‎ 
    def nomina_ke_x_anku (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'anku'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-anlah)‎ 
    def nomina_ke_x_anlah (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'anlah'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-anmu)‎ 
    def nomina_ke_x_anmu (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'anmu'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-annya)‎ 
    def nomina_ke_x_annya (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'annya'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-ku)‎ 
    def nomina_ke_x_ku (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'ku'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-mu)‎ 
    def nomina_ke_x_mu (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'mu'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (ke-nya)‎ 
    def nomina_ke_x_nya (string)
      @verex = VerEx.new do
        start_of_line
        find 'ke'
        begin_capture
        anything
        end_capture
        find 'nya'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (keber-an)‎ 
    def nomina_keber_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'keber'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (kepeng-an)‎ 
    def nomina_kepeng_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'kepeng'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (kese-an)‎ 
    def nomina_kese_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'kese'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (keter-an)‎ 
    def nomina_keter_x_an (string)
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
    
    # id:Nomina (ketidak-an)‎ 
    def nomina_ketidak_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'ketidak'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (pe-)‎
    def nomina_pe_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'pe'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (pe-an)‎
    def nomina_pe_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'pe'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (peng-)‎
    def nomina_peng_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'peng'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (peng-an)‎
    def nomina_peng_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'peng'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (per-)‎
    def nomina_per_x (string)
      @verex = VerEx.new do
        start_of_line
        find 'per'
        begin_capture
        anything
        end_capture
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (per-an)‎
    def nomina_per_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'per'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (se-)‎ 
    def nomina_se_x (string)
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
    
    # id:Nomina (se-an)‎
    def nomina_se_x_an (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        find 'an'
        end_of_line
      end
      return @verex.match(string)
    end
    
    # id:Nomina (se-nya)‎
    def nomina_se_x_nya (string)
      @verex = VerEx.new do
        start_of_line
        find 'se'
        begin_capture
        anything
        end_capture
        find 'nya'
        end_of_line
      end
      return @verex.match(string)
    end

  end
end
