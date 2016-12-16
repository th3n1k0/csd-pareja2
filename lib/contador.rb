class ContadorPuntos
    
    
    
    def initialize botton1, botton2, botton3, botton4
        #@jugadores ={"j1" => 0,"j2" => 0}
        @button1 = button1;
        @button2 = button2;
        @button3 = button3;
        @button4 = button4;
    end
    
    def score
        if isTrue?
            "Es correcto"
        else
            "Es incorrecto"
        end
    end
    

    
    private
    
    def isTrue?
        
        @button1 == @button3
        
       # @jugadores['j1'] == 3 and @jugadores['j2'] == 3
    end
end