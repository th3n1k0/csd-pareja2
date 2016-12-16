class ContadorPuntos
    
    
    
    def initialize
        #@jugadores ={"j1" => 0,"j2" => 0}
        @button1 = -1;
        @button2 = -1;
        @button3 = -1;
        @button4 = -1;
    end
    
    def score
        if isTrue?
            "Es correcto"
        else
            "Es incorrecto"
        end
    end
    
    def marcar jugador
        
        if jugador=="j1"
            @button1 = 1
        elsif jugador=="j2"
            @button2 = 1
        elsif jugador=="j3"
            @button3 = 1
        elsif jugador=="j4"
            @button4 = 1         
        end
        
    end
    
    private
    
    def isTrue?
       ( @button1!=-1 &&  @button3!=-1 && @button1 == @button3   ) 
       # @jugadores['j1'] == 3 and @jugadores['j2'] == 3
    end
end