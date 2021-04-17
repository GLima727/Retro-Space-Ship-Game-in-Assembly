TEC_LIN    				EQU	0C000H		; endereço das linhas do teclado (periférico POUT-2)
TEC_COL    				EQU 0E000H      ; endereço das colunas do teclado (periférico PIN)
DISPLAYS   				EQU 0A000H      ; endereço dos displays de 7 segmentos (periférico POUT-1)

DECIMA_AUX				EQU 10			; Variável de auxílio no ciclo de conversão do valor de energia para decimal
ENERGIA_INICIAL			EQU	100			; Valor inicial de energia
COLUNA          		EQU 35         	; Coluna em que o pixel "de referência" para o desenho da nave vai ser desenhado
LINHA          			EQU 27         	; Linha em que o pixel "de referência" para o desenho da nave vai ser desenhado
LINHA_IN_MISSIL         EQU 26
ALCANCE_MISSIL          EQU 16
COMPRIMENTO_OVNI_G      EQU 4

APAGA_ECRA				EQU 6000H		; Endereço do comando para apagar todos os píxels de um ecrã a ser definido
ESCOLHE_IMAGEM 			EQU 6042H		; Endereço do comando para escolher uma imagem
APAGA_PIXEL     		EQU 6018H      	; Endereço do comando para apagar todos os pixéis de todos os ecrãs
DEFINE_PIXEL    		EQU 6012H      	; Endereço do comando para escrever um pixel
DEFINE_COLUNA   		EQU 600CH      	; Endereço do comando para definir a coluna
DEFINE_LINHA    		EQU 600AH      	; Endereço do comando para definir a linha
APAGA_ECRAS     		EQU 6002H      	; Endereço do comando para apagar todos os pixels de todos os ecrãs
APAGA_AVISO     		EQU 6040H      	; Endereço do comando para apagar o aviso de nenhum cenário selecionado
ESCOLHE_ECRA    		EQU 6004H		; Endereço do comando para escolher o ecrã
ESCOLHE_VIDEO   		EQU 6048H		; Endereço do comando para escolher o ecrã
INICIA_VIDEO    		EQU 605AH		; Endereço do comando para iniciar um som
INICIA_SOM				EQU 605CH		; Endereço do comando para iniciar um video
APAGA_VIDEO     		EQU 6066H		; Endereço do comando para apagar/parar de reproduzir um video
PAUSA_VIDEO				EQU 6062H		; Endereço do comando para pausar a reprodução de um vídeo
CONTINUA_VIDEO  		EQU 6060H 		; Endereço do comando para continuar a reprodução de um vídeo
RETOMA_SOM      		EQU 6052H		; Endereço do comando para continuar a reprodução de um áudio

LINHA_INICIAL   		EQU 0          	; Linha em que os ovnis/asteróides são desenhados inicialmente
COLUNA_ESQ_IN   		EQU 27        	; Coluna inicial do ovni/asteróide que vai para a esquerda
COLUNA_CEN_IN   		EQU 30        	; Coluna inicial do ovni/asteróide que vai para o centro
COLUNA_DIR_IN   		EQU 33        	; Coluna inicial do ovni/asteróide que vai para a direita

LINHA_DESENHO   		EQU 2000H       ; Endereço onde está a linha atual dos ovnis/asteroides
COLUNA_ESQ      		EQU 2002H       ; Endereço onde está a coluna onde o desenho da esquerda se encontra
COLUNA_DIR      		EQU 2004H       ; Endereço onde está a coluna onde o desenho da direita se encontra

DESENHO_1       		EQU 2006H       ; Endereço onde está o desenho 1
DESENHO_2       		EQU 2008H       ; Endereço onde está o desenho 2
DESENHO_3       		EQU 200AH       ; Endereço onde está o desenho 3
DESENHO_4       		EQU 200CH       ; Endereço onde está o desenho 4

DIRECAO_1       		EQU 200EH       ; Endereço onde está a direção do ovni/asteroide 1
DIRECAO_2       		EQU 2010H       ; Endereço onde está a direção do ovni/asteroide 2
DIRECAO_3       		EQU 2012H       ; Endereço onde está a direção do ovni/asteroide 3
DIRECAO_4       		EQU 2014H       ; Endereço onde está a direção do ovni/asteroide 4

COLUNA_MISSIL           EQU 2016H       ; Endereço onde está a coluna atual do missil
LINHA_MISSIL            EQU 2018H       ; Endereço onde está a linha atual do missil

HA_EXPLOSAO             EQU 201AH       ; Endereço onde é guardado se houve uma explosão
LINHA_EXPLOSAO          EQU 201CH       ; Endereço onde está a linha atual da explosão
COLUNA_EXPLOSAO         EQU 201EH       ; Endereço onde está a coluna atual da explosão

END_ENERGIA				EQU 2020H		; Endereço onde é guardado o valor da energia atual

COLUNA_NAVE             EQU 2022H       ; Endereço onde está a coluna atual da nave

ESQUERDA        		EQU 0           ; Número que indica que o ovni/asteroide está a ir para a esquerda
CENTRO          		EQU 1           ; Número que indica que o ovni/asteroide está a ir para o centro
DIREITA         		EQU 2           ; Número que indica que o ovni/asteroide está a ir para a direita
DESTRUIDO               EQU 3           ; Número que indica que o OVNI/asteróide explodiu

ECRA_ASTEROIDES         EQU 1           ; Número do ecrã onde os asteroides vão ser desenhados
ECRA_OVNIS              EQU 2           ; Número do ecrã onde os OVNIs vão ser desenhados
ECRA_MISSIL             EQU 3           ; Número do ecrã onde o missil vai ser desenhado

COR_PIXEL_NAVE       	EQU 0FFF1H     	; Cor do pixel da nave (amarelo)
COR_PIXEL_RED       	EQU 0FF00H  	; Cor do píxel do OVNI (encarnado)
COR_PIXEL_GREEN     	EQU 0F0F0H  	; Cor do píxel do asteróide (verde)
COR_PIXEL_MISSIL        EQU 0FF0FH      ; cor do píxel do míssil (roxo)
COR_PIXEL_EXPLOSAO      EQU 0FFC0H      ; cor do píxel da explosão (cor de laranja)
COR_PIXEL_CINZENTO 		EQU 0D667H		; cor dos ovnis e asteroides quando estão entre a linha 1 e 6 (cor cinzenta)

APAGA_CENARIO_FRONTAL 	EQU 6044H
CENARIO_FRONTAL 		EQU 6046H
LIM_DIR_NAVE			EQU 3BH			; Número máximo da coluna "de referência" quando se desenha a nave, para não sair do ecrã.


PLACE	1000H
pilha:		TABLE	100H

SP_inicial:

tab_int:				WORD rot_int_0	; Tabela de rotinas das interrupções
						WORD rot_int_1
						WORD rot_int_2
						
tabela:             	WORD 10001b
                        WORD 11111b		; Tabela de auxílio ao desenho da nave
                        WORD 10101b
                        WORD 01110b
                        WORD 10101b
                        WORD 00002h
						
tabela_cinzento_pequeno_ovni: WORD 00000b	; Tabela de auxílio ao desenho do OVNI quando é um pixel cinzento	
							  WORD 00000b
							  WORD 00100b
							  WORD 00000b
							  WORD 00000b
							  WORD 00002h

tabela_cinzento_medio_ovni:  WORD 00000b	; Tabela de auxílio ao desenho do OVNI quando é um quadrado cinzento
						WORD 00000b
                        WORD 00110b
                        WORD 00110b
                        WORD 00000b
                        WORD 00002h	
						
tabela_ovni_pequeno: 	WORD 00000b		; Tabela de auxílio ao desenho do OVNI, quando pequeno
                        WORD 01110b
                        WORD 10101b
                        WORD 01110b
                        WORD 00000b
                        WORD 00002h		
			
tabela_ovni_medio: 		WORD 10001b		; Tabela de auxílio ao desenho do OVNI, quando no tamanho intermédio
                        WORD 01110b
                        WORD 10101b
                        WORD 11111b
                        WORD 00000b
                        WORD 00002h	

tabela_ovni_grande:     WORD 10001b		; Tabela de auxílio ao desenho do OVNI, quando no tamanho máximo
                        WORD 01110b
                        WORD 10101b
                        WORD 11111b
                        WORD 10101b
                        WORD 00002h
						
						
tabela_cinzento_pequeno_ast: WORD 00000b		; Tabela de auxílio ao desenho do asteróide quando é um pixel cinzento	
							  WORD 00000b
							  WORD 00000b
							  WORD 00100b
							  WORD 00000b
							  WORD 00002h

tabela_cinzento_medio_ast: WORD 00000b		; Tabela de auxílio ao desenho do asteróide quando é um quadrado cinzento
							WORD 00000b
							WORD 00000b
							WORD 01100b
							WORD 01100b
							WORD 00002h		

tabela_ast_pequeno:     WORD 00000b		; Tabela de auxílio ao desenho do asteróide, quando pequeno
                        WORD 01100b
                        WORD 01010b
                        WORD 00110b
                        WORD 00000b
                        WORD 00002h	
					

tabela_ast_medio:   	WORD 00100b		; Tabela de auxílio ao desenho do asteróide, quando no tamanho intermédio
						WORD 01010b
						WORD 10001b
						WORD 01010b
						WORD 00100b
						WORD 00002h
						
tabela_ast_grande:    	WORD 11011b		; Tabela de auxílio ao desenho do asteróide, quando no tamanho máximo
						WORD 10101b
						WORD 01010b
						WORD 10101b
						WORD 11011b
						WORD 00002h					
					
PLACE 0
		MOV SP, SP_inicial				; Inicializa o stack pointer no endereço a seguir à pilha.
		MOV BTE, tab_int				; Inicializa o BTE no primeiro endereço da tabela de rotinas das interrupções.
		MOV R9, COLUNA					; Guarda-se a "coluna de referência" para o desenho da nave em R9. Aqui mete-se o valor da
		MOV R0, COLUNA_NAVE				; coluna onde a nave é desenhada quando o jogo se inicia nesse registo.
		MOV [R0], R9
										
		
	
		MOV  R0, APAGA_ECRAS
		MOV  [R0], R1            		; Apaga todos os pixels de todos os ecrãs (o valor de R1 não é relevante).
	
		MOV R1, APAGA_VIDEO   			; Apaga o vídeo
		MOV R0, 0
		MOV [R1], R0					
		
		MOV R1, INICIA_SOM				; Inicia-se o som ambiente do ecrã antes de iniciar o jogo em si.
		MOV R0, 4
		MOV [R1], R0					
		
		MOV R0, LINHA_MISSIL			; Seleciona a linha do missil como -1 para indicar que não há nenhum disparado
		MOV R1, -1
		MOV [R0], R1
		
		MOV R0, END_ENERGIA				; Escreve na memória que a energia inicial é 100
		MOV R1, 100
		MOV [R0], R1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	Neste ciclo inicia-se o programa do jogo: reproduz-se a imagem de introdução no MediaCenter e em simultâneo, verifica-se em cada ciclo
; 	se a tecla para iniciar o jogo (tecla D) é premida.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		

ciclo_teclado_inicio_jogo:
	
		PUSH R0
		PUSH R1
	
		MOV R1, RETOMA_SOM				; Inicia-se o vídeo em ciclo até ser parado
		MOV R0, 0
		MOV [R1], R0
	
		MOV R1, ESCOLHE_IMAGEM			; Seleciona-se a imagem de introdução
		MOV R0, 0
		MOV [R1], R0
	
		MOV R1, END_ENERGIA				; Escreve na memória que a energia inicial é 100
		MOV R0, 100
		MOV [R1], R0
		
		MOV R0, LINHA_DESENHO
		MOV R1, LINHA_INICIAL
		MOV [R0], R1            		; Guarda em 2000H a linha atual do ovni/asteróide.
	
		MOV R0, COLUNA_ESQ
		MOV R1, COLUNA_ESQ_IN
		MOV [R0], R1            		; Guarda em 2002H a coluna atual do ovni/asteróide da esquerda.
	
		MOV R0, COLUNA_DIR
		MOV R1, COLUNA_DIR_IN
		MOV [R0], R1            		; Guarda em 2004H a coluna atual do ovni/asteróide da direita.
		
		POP R1
		POP R0
	
		MOV R2, TEC_LIN					; Passa para os registos R2 e R3 os endereços das linhas e das colunas, respetivamente, do teclado.
		MOV R3, TEC_COL
	
		MOV R1, 8
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 2
		JNZ ciclo_teclado_inicio_jogo
	
		EI0
		EI1
		EI2
		EI3
		EI
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; INICIALIZAÇÕES DO JOGO
;
; Aqui começa-se o vídeo de fundo e para-se a reprodução do som ambiente, faz-se aparecer a nave na sua posição inicial e envia-se a o valor
; da energia para os displays. De seguida, entra-se no ciclo do teclado onde todas as teclas a serem usadas são testadas (ou seja, as que não
; têm uso neste programa não são testadas).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		MOV R0, END_ENERGIA
		MOV R11, [R0]					; Passa-se o valor da energia para um registo e
		CALL conversao					; Chama-se a rotina que converte para decimal e passa para os displays o valor convertido.


comeca_video:
	
		MOV R1, INICIA_SOM				;Inicia o vídeo a dar em ciclo até ser terminado
		MOV R0, 0
		MOV [R1], R0
		
		MOV R1, APAGA_VIDEO				; Termina-se o som ambiente
		MOV R0, 4
		MOV [R1], R0
	
		MOV R1, INICIA_VIDEO			; Seleciona-se o vídeo a reprodizir enquanto se estiver a jogar.
		MOV R0, 0
		MOV [R1], R0


;SPAWN NAVE
	
		MOV R3, COR_PIXEL_NAVE			; Seleciona-se a cor com que desenhar a nave.
		MOV R0, COLUNA_NAVE				; Seleciona a coluna de referência da nave
		MOV R9, [R0]
		MOV R10, LINHA					; Seleciona a linha de referência da nave
		MOV R2, 0                       ; Seleciona o ecrã da nave
		MOV R4, tabela					; Seleciona a tabela da nave
		CALL desenho_ovni				; Vai desenhar a nave

inicio:
	
		ADD R6, 1               		; Este registo faz parte de um esquema para gerar um número pseudo-aleatório.
										; Sempre que se quiser um número pseudo-aleatório, lê-se os últimos bits do registo.
										; Adiciona-se 1 ao valor de R6 (o valor inicial não é importante).		
		
		MOV R0, 0FFFFH					; Se este registo chegar ao limite do valor que pode obter, então é reiniciado para 1.
		CMP R6, R0
		JNZ keep_going
		MOV R6, 1
		
keep_going:
		MOV R0, END_ENERGIA				; Se a energia chegar a 0, então salta-se para a função game_over (acabou o jogo, por já
		MOV R11, [R0]					; não ter energia).
		CMP R11, 0  
		JZ game_over
	
		MOV R2, TEC_LIN					; Passa para os registos R2 e R3 os endereços das linhas e das colunas, respetivamente, do teclado.
		MOV R3, TEC_COL
	
ciclo_teclado:							; Passa-se para um registo o número da linha a testar, primeiro a primeira linha (valor 1) e depois
		MOV R1, 1						; a última linha (valor 8).
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 0						; Se o output do teclado (corresponde à coluna do teclado) for diferente de 0, então há alguma tecla
		JNZ triagem_1					; da primeira linha carregada. Salta para a triagem da primeira linha.
		MOV R1, 8
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 0						; Se o output do teclado (corresponde à coluna do teclado) for 0, então não há tecla premida na última
		JZ inicio						; linha e volta ao inicio do cilco do teclado
		JMP triagem_8

triagem_1:								; Aqui compara-se o registo que recebeu anteriormente o output do teclado quando se verificou a primeira
		CMP R0, 1						; linha do teclado.
		JZ nave_esq						; Se o valor corresponder ao primeiro botão, então salta-se para a função que move a nave para a esquerda.
		CMP R0, 4
		JZ nave_dir						; Se o valor corresponder ao terceiro botão, então salta-se para a função que move a nave para a direita.
		CMP R0, 2
		JNZ inicio				        ; Se o valor corresponder ao segundo botão, então salta-se para a função que dispara o míssil.
		CALL dispara_missil
		JMP inicio				 		; Se não corresponder a nenhum dos parâmetros anteriores, então é porque se carregou numa tecla sem uso.
										; Volta-se ao ciclo do teclado.
		
triagem_8:								; Aqui compara-se o registo que recebeu anteriormente o output do teclado quando se verificou a última
		CMP R0, 1						; linha do teclado.
		JZ pausa						; Se o valor corresponder ao primeiro botão, então salta-se para a função da pausa.
		CMP R0, 4						; Se o valor não corresponder ao terceiro botão, então é porque não foi premida nenhuma tecla com uso.
		JZ game_over					; Se o valor corresponder ao terceiro botão, então termina-se o jogo (função game_over). 
		JMP inicio						; Se o valor não corresponder ao terceiro botão, então é porque não foi premida nenhuma tecla com uso e volta-se
										; ao ciclo do teclado.

game_over:
	
		DI								; Proíbe as interrupções de acontecerem

	
		MOV R0, APAGA_VIDEO				; Apaga-se vídeo
		MOV R1, 0
		MOV [R0], R1
	
		MOV R1, APAGA_CENARIO_FRONTAL	; Apaga-se o cenário frontal, neste caso a imagem de "Pausa".
		MOV R0, 0
		MOV [R1], R0
	
		MOV R1, APAGA_AVISO				; Apaga-se o cenário de fundo e elimina o aviso:"No background image selected".
		MOV R0, 0
		MOV [R1], R0
	
		MOV R1, APAGA_ECRAS				; Apaga-se todos os pixels de todos os ecrãs.
		MOV R0, 0
		MOV [R1], R0
		
		MOV R1, INICIA_VIDEO			; Inicia-se o som nº1 de "Game over".
		MOV R0, 1
		MOV [R1], R0
	
		MOV R1, INICIA_VIDEO			; Inicia-se o som nº2 "som de explosão 1".
		MOV R0, 2
		MOV [R1], R0
	
		MOV R1, ESCOLHE_IMAGEM			; Revela-se a imagem de Final de Jogo.
		MOV R0, 1
		MOV [R1], R0
	
		MOV R1, DISPLAYS				; Quando o jogo acaba, o valor da energia passa a 0, por isso, imprime-se 0 nos Displays da energia.
		MOV R0, 0
		MOV [R1], R0
	
ciclo_game_over:						; Este ciclo espera até que a tecla seja largada, para que não se entre nesta rotina múltiplas vezes
										; seguidas. Testa-se apenas a linha e coluna respetivas à tecla que chama esta rotina.	
		MOV R0, TEC_LIN
		MOV R1, TEC_COL
		MOV R2, 8
		MOVB [R0], R2
		MOVB R3, [R1]
		CMP R3, 2
		JNZ ciclo_game_over
		JMP ciclo_teclado_inicio_jogo
		
nave_dir:								; Esta rotina serve para mover a nave para a direita.
		
		DI
		
		MOV R2, LIM_DIR_NAVE
		CMP R2, R9						; Caso a nave já tenha chegado ao limite direito do ecrã, volta ao ciclo do teclado e não se move a nave.
		JZ inicio
		
		MOV R3, 0						; Caso contrário, primeiro apaga-se a nave na posição atual (desenha-se a nave com a cor 0H)
		MOV R0, COLUNA_NAVE
		MOV R9, [R0]
		MOV R10, LINHA					; Seleciona a linha de referência da nave
		MOV R2, 0                       ; Seleciona o ecrã da nave
		MOV R4, tabela					; Seleciona a tabela da nave
		CALL desenho_ovni				; Vai apag a nave
						
		MOV R3, COR_PIXEL_NAVE			; Seguidamente, desenha-se a nave uma píxel à direita, incrementando o valor do registo que guarda a coluna
		ADD R9, 1						; "de referência" para o desenho desta por 1 e desenhando a nave com a sua cor.
		CALL desenho_ovni
		MOV R0, COLUNA_NAVE
		MOV [R0], R9

		EI
		
		PUSH R1
		MOV R1, 6000H

ciclo_espera2:							; Segue-se um ciclo de espera que para que a nave não se mova a uma velocidade incontrolável.
		SUB R1, 1						; Atribui-se um valor alto a um registo e vai-se decrementando o mesmo até chegar a 0 e depois segue-se
		JNZ ciclo_espera2				; a função seguinte.
		POP R1

continuo2:								; Nesta função verifica-se se a tecla respetiva a esta rotina ainda está premida.
		MOV R2, TEC_LIN
		MOV R3, TEC_COL
		MOV R1, 1						; Testa-se apenas a linha e coluna correspondentes à tecla em questão.
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 4
		JZ nave_dir						; Se ainda se encontrar premida, volta-se ao ciclo de desenhar a nave um píxel mais à direita.
		JMP inicio						; Senão, volta ao ciclo do teclado.
	
nave_esq:								; Esta rotina serve para mover a nave para a esquerda.
		DI
		CMP R9, 0
		JZ inicio						; Caso a nave já tenha chegado ao limite esquerdo do ecrã, volta ao ciclo do teclado e não se move a nave.
										; Caso contrário, primeiro apaga-se a nave na posição atual (desenha-se a nave com a cor 0H)
		MOV R3, 0
		MOV R0, COLUNA_NAVE
		MOV R9, [R0]
		MOV R10, LINHA					; Seleciona a linha de referência da nave
		MOV R2, 0                       ; Seleciona o ecrã da nave
		MOV R4, tabela					; Seleciona a tabela da nave
		CALL desenho_ovni				; Vai desenhar a nave
		
		MOV R3, COR_PIXEL_NAVE				; Seguidamente, desenha-se a nave uma píxel à esquerda, desenhando a nave com a sua cor e subraíndo 1
		SUB R9, 1						; ao valor do registo que guarda a coluna "de referência" para o desenho desta.
		CALL desenho_ovni
		MOV R0, COLUNA_NAVE
		MOV [R0], R9

		EI
		
		PUSH R1
		
		MOV R1, 6000H

ciclo_espera:							; Segue-se um ciclo de espera que para que a nave não se mova a uma velocidade incontrolável.
		SUB R1, 1						; Atribui-se um valor alto a um registo e vai-se decrementando o mesmo até chegar a 0 e depois segue-se
		JNZ ciclo_espera				; a função seguinte.
		POP R1

continuo:								; Nesta função verifica-se se a tecla respetiva a esta rotina ainda está premida.
		MOV R2, TEC_LIN
		MOV R3, TEC_COL	
		MOV R1, 1						; Testa-se apenas a linha e coluna correspondentes à tecla em questão.
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 1
		JZ nave_esq						; Se ainda se encontrar premida, volta-se ao ciclo de desenhar a nave um píxel mais à esquerda.
		JMP inicio						; Senão, volta ao ciclo do teclado.
		
pausa:
	
	DI 									; Proíbe-se as interrupções de acontecerem
	
	PUSH R0
	PUSH R1
	
	MOV R1, APAGA_VIDEO					; Para-se o som de inicio do jogo caso ainda esteja a tocar
	MOV R0, 4
	MOV [R1], R0
	
	MOV R1, INICIA_SOM					; Inicia-se o som nº5 de "Pause"
	MOV R0, 5
	MOV [R1], R0

	MOV R0, PAUSA_VIDEO					; Interrompe-se o vídeo
	MOV R1, 0
	MOV [R0], R1
	
	MOV R1, APAGA_ECRAS					; Apagam-se todos os pixels de todos os ecrãs		
	MOV R0, 0
	MOV [R1], R0
	
	MOV R1, CENARIO_FRONTAL				; Coloca-se a imagem de "Pausa" como cenário frontal
	MOV R0, 2
	MOV [R1], R0
	
	MOV R1, INICIA_SOM					; Inicia-se novamente o som ambiente.
	MOV R0, 5
	MOV [R1], R0
	
	MOV R3, 0							; Desenha-se a nave com a cor 0, o que faz com que esta desapareça.
	MOV R0, COLUNA_NAVE
	MOV R9, [R0]
	MOV R10, LINHA						; Seleciona a linha de referência da nave
	MOV R2, 0                       	; Seleciona o ecrã da nave
	MOV R4, tabela						; Seleciona a tabela da nave
	CALL desenho_ovni					; Vai desenhar a nave
	DI
espera_soltar:							; Para que esta rotina não seja chamada repetidamente, criou-se este loop (em conjunto com um no fim
		MOV R2, TEC_LIN					; desta rotina) para que se espere que esta tecla seja largada para que possa ser premida outra vez.
		MOV R3, TEC_COL					; Verifica-se apenas a  linha e a coluna correspondentes à tecla em questão, C (coluna 1, linha 4).
		MOV R1, 8
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 0
		JNZ espera_soltar				; Se houver output, volta ao inicio até que já não seja detetado. 
	
deteta_pausa:							; Neste ciclo espera-se que a tecla seja premida outra vez para iniciar o processo de sair da pausa.
		MOV R2, TEC_LIN					; Como no ciclo anterior, apenas são verificadas a linha e coluna correspondentes à tecla em questão,
		MOV R3, TEC_COL					; C (coluna 1, linha 4)
		MOV R1, 8
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 1
		JNZ deteta_pausa 				; Se não houver output, volta ao ciclo até que seja detetado.

tira_pausa:
		MOV R1, APAGA_CENARIO_FRONTAL	; Apaga-se a imagem da pausa.
		MOV R0, 2
		MOV [R1], R0
	
		MOV R1, ESCOLHE_VIDEO			; Escolhe-se o vídeo de fundo do jogo.
		MOV R0, 0
		MOV [R1], R0
	
		MOV R1, CONTINUA_VIDEO			; Reproduz-se o vídeo de fundo do jogo.
		MOV R0, 0
		MOV [R1], R0
	
;SPAWN NAVE
	
		MOV R3, COR_PIXEL_NAVE			; Seleciona-se a cor da nave.
		MOV R0, COLUNA_NAVE
		MOV R9, [R0]
		MOV R10, LINHA					; Seleciona a linha de referência da nave
		MOV R2, 0                       ; Seleciona o ecrã da nave
		MOV R4, tabela					; Seleciona a tabela da nave
		CALL desenho_ovni				; Vai desenhar a nave (aparece depois de sair de pausa)
	
espera_soltar2:							; Esta função funciona em conjunto com a função espera_soltar (está lá explicada a utilidade desta).
		MOV R2, TEC_LIN
		MOV R3, TEC_COL
		MOV R1, 8
		MOVB [R2], R1
		MOVB R0, [R3]
		CMP R0, 0
		JNZ espera_soltar2
	
		POP R1
		POP R0
	
		EI								; Volta-se a autorizar as interrupções para que o jogo continue a funcionar normalmente.
	
		JMP inicio

; ********************************************************************************************************************************************
; Esta rotina vai disparar um missil caso não haja um já disparado
;
; ENTRADAS: R3 (cor do objeto), R7 (tamanho do novo objeto a desenhar)
; SAIDAS: R4 (endereço da nova tabela a desenhar)
; ********************************************************************************************************************************************		
dispara_missil:
		PUSH R0
		PUSH R1
		PUSH R11
		
		MOV R1, INICIA_VIDEO			; Seleciona o som do missil (Som nº 3)	
		MOV R0, 3
		MOV [R1], R0
		
		MOV R0, LINHA_MISSIL			; Lê na memória o valor da linha do missil
		MOV R1, [R0]
		CMP R1, -1						; Compara a linha com -1 (indicativo de que o missil não está lançado)
		JNZ block_missil				; Se já estiver um missil disparado, então nã faz nada

		MOV R0, LINHA_IN_MISSIL			; Seleciona a linha inicial do missil
		MOV R1, DEFINE_LINHA			; Define essa como a próxima linha onde desenhar
		MOV [R1], R0
		
		MOV R1, COLUNA_NAVE				; Seleciona a coluna onde a nave está
		MOV R0, [R1]
		ADD R0, 2						; Seleciona o meio da nave
		
		MOV R1, COLUNA_MISSIL			; Guarda esta como sendo a coluna do missil
		MOV [R1], R0
		
		MOV R1, DEFINE_COLUNA			; Seleciona esta como a coluna onde desenhar
		MOV [R1], R0
		
		MOV R0, ECRA_MISSIL				; Seleciona o ecrã onde desenhar o missil
		MOV R1, ESCOLHE_IMAGEM
		MOV [R1], R0					; Define esse como o próximo ecrã onde desenhar

		MOV R0, COR_PIXEL_MISSIL		; Seleciona a cor do missil
		MOV R1, DEFINE_PIXEL
		MOV [R1], R0
		
		MOV R1, LINHA_MISSIL			; Guarda a linha atual do missil
		MOV R0, LINHA_IN_MISSIL
		MOV [R1], R0
		
		MOV R0, END_ENERGIA				; Lê o valor da energia atual
		MOV R11, [R0]
		SUB R11, 5						; Retira 5 pontos à energia
		CALL conversao					; Converte o valor para decimal e escreve nos displays
		MOV [R0], R11					; Guarda esse novo valor de energia
		
block_missil:		
		
		POP R11
		POP R1
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta é a rotina de interrupção 0 que acontece a cada 400 ms. O seu objetivo é mover os ovnis/asteroides e todas as ações associadas,
; tais como testar as colisões da nave com os diversos objetos.
;
; Não existem entradas nem saídas pois todos os valores necesários estão guardados em memória.
; ********************************************************************************************************************************************

rot_int_0:
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R5
		PUSH R6
		PUSH R7
		PUSH R8
		PUSH R9
		PUSH R10
		
		
		MOV R0, LINHA_DESENHO         
		MOV R10, [R0]       			; Lê o valor da linha atual dos ovnis/asteroides
		
		MOV R0, LINHA_INICIAL           ; Lê o valor da linha onde os ovnis/asteroides aparecem inicialmente
		CMP R10, R0                     ; Vê se está nessa linha inicial
		JNZ  normal                     ; Se estiver noutra linha, então não é necessário gerar novos ovnis/asteroides
		
		CALL randomize                  ; Vai gerar aleatoriamente um ovni/asteroide e uma direção
		MOV R0, DESENHO_1               ; Guarda o primeiro desenho gerado no respetivo endereço        
		MOV [R0], R4
		MOV R0, DIRECAO_1         	    ; Guarda a primeira direção gerada no respetivo endereço   
		MOV [R0], R5
		
		SHR R6, 2                       ; Como os dois últimos bits de R6 já foram usados, altera R6 para que gere uma nove combinação
		
		CALL randomize     				; Vai gerar aleatoriamente um ovni/asteroide e uma direção
		MOV R0, DESENHO_2				; Guarda o segundo desenho gerado no respetivo endereço        
		MOV [R0], R4
		MOV R0, DIRECAO_2         		; Guarda a segunda direção gerada no respetivo endereço
		MOV [R0], R5
		
		SHR R6, 2						; Como os dois últimos bits de R6 já foram usados, altera R6 para que gere uma nove combinação
		
		CALL randomize					; Vai gerar aleatoriamente um ovni/asteroide e uma direção
		MOV R0, DESENHO_3				; Guarda o terceiro desenho gerado no respetivo endereço        
		MOV [R0], R4
		MOV R0, DIRECAO_3         		; Guarda a terceira direção gerada no respetivo endereço
		MOV [R0], R5
		
		SHR R6, 2						; Como os dois últimos bits de R6 já foram usados, altera R6 para que gere uma nove combinação
		
		CALL randomize					; Vai gerar aleatoriamente um ovni/asteroide e uma direção
		MOV R0, DESENHO_4    			; Guarda o quarto desenho gerado no respetivo endereço      
		MOV [R0], R4        			
		MOV R0, DIRECAO_4         		; Guarda a quarta direção gerada no respetivo endereço
		MOV [R0], R5        			
		
		
normal:
		MOV R0, DESENHO_1         
		MOV R4, [R0]        			; Lê o valor da tabela atual do objeto 1
		
		MOV R0, DIRECAO_1         
		MOV R5, [R0]        			; Lê o valor da direção do objeto 1
		
		CMP R5, DESTRUIDO               ; Vê se a direção indica que este ovni/asteroide foi removido
		JZ  desenha_2                   ; Se tiver sido removido, não desenha este ovni/asteroide
		
		CALL decide_ecra                ; Escolhe o ecrã consoante for asteroide ou nave inimiga (guarda-o em R2)
		
		CALL obter_col_antes			; Consoante a direção deste objeto, vai devolver em R9 a coluna onde ele está
		
		MOV R3, 0           			; Define a cor a 0
		CALL desenho_ovni   			; Apaga a imagem
		
		CALL obter_col_depois			; Consoante a direção deste objeto, vai devolver em R9 a nova coluna para o desenhar
		
		ADD R10, 1						; Atualiza o valor de R10 para uma linha a baixo
		
		CALL define_estado      		; Define a cor do objeto e o tamanho (para referência futura)
		CALL escolhe_prox       		; Decide se tem de mudar de tabela (aumentar o objeto)
		
		CALL desenho_ovni       		; Desenha o ovni/asteroide
		
		CALL boom                       ; Vê se colidiu com a nave e, se tiver colidido, toma as respetivas medidas
		SUB R10, 1                      ; Volta a colocar em R10 o valor da linha anterior para desenhar os próximos objetos
		
		MOV R0, DIRECAO_1               ; Guarda a direção atual deste objeto (só é alterado se tiver sido removido: direção DESTRUIDO)
		MOV [R0], R5
		
		MOV R0, DESENHO_1         
		MOV [R0], R4            		; Guarda a tabela atual do ovni/asteroide 1
		
desenha_2:
		MOV R0, DESENHO_2         
		MOV R4, [R0]        			; Lê o valor da tabela atual do objeto 2
		
		MOV R0, DIRECAO_2         
		MOV R5, [R0]        			; Lê o valor da direção do objeto 2
		
		CMP R5, DESTRUIDO				; Vê se a direção indica que este ovni/asteroide foi removido
		JZ  desenha_3					; Se tiver sido removido, não desenha este ovni/asteroide
		
		CALL decide_ecra                ; Escolhe o ecrã consoante for asteroide ou nave inimiga
		
		CALL obter_col_antes			; Consoante a direção deste objeto, vai devolver em R9 a coluna onde ele está
		
		MOV R3, 0           			; Define a cor a 0
		CALL desenho_ovni   			; Apaga a imagem
		
		CALL obter_col_depois			; Consoante a direção deste objeto, vai devolver em R9 a nova coluna para o desenhar
		
		ADD R10, 1						; Atualiza o valor de R10 para uma linha a baixo
		
		CALL define_estado      		; Define a cor do objeto e o tamanho (para referência futura)
		CALL escolhe_prox       		; Decide se tem de mudar de tabela (aumentar o objeto)
		
		CALL desenho_ovni       		; Desenha o ovni/asteroide
		CALL boom						; Vê se colidiu com a nave e, se tiver colidido, toma as respetivas medidas
		SUB R10, 1						; Volta a colocar em R10 o valor da linha anterior para desenhar os próximos objetos
		
		MOV R0, DIRECAO_2				; Guarda a direção atual deste objeto (só é alterado se tiver sido removido: direção DESTRUIDO)
		MOV [R0], R5
		
		MOV R0, DESENHO_2         
		MOV [R0], R4            		; Guarda a tabela atual do ovni/asteroide 2
		
desenha_3:
		MOV R0, DESENHO_3         
		MOV R4, [R0]        			; Lê o valor da tabela atual do objeto 3
		
		MOV R0, DIRECAO_3         
		MOV R5, [R0]        			; Lê o valor da direção do objeto 3
		
		CMP R5, DESTRUIDO				; Vê se a direção indica que este ovni/asteroide foi removido
		JZ  desenha_4					; Se tiver sido removido, não desenha este ovni/asteroide
		
		CALL decide_ecra                ; Escolhe o ecrã consoante for asteroide ou nave inimiga
		
		CALL obter_col_antes			; Consoante a direção deste objeto, vai devolver em R9 a coluna onde ele está
		
		MOV R3, 0           			; Define a cor a 0
		CALL desenho_ovni   			; Apaga a imagem
		
		CALL obter_col_depois			; Consoante a direção deste objeto, vai devolver em R9 a nova coluna para o desenhar
		
		ADD R10, 1						; Atualiza o valor de R10 para uma linha a baixo
		
		CALL define_estado      		; Define a cor do objeto e o tamanho (para referência futura)
		CALL escolhe_prox       		; Decide se tem de mudar de tabela (aumentar o objeto)
		
		CALL desenho_ovni       		; Desenha o ovni/asteroide
		CALL boom						; Vê se colidiu com a nave e, se tiver colidido, toma as respetivas medidas
		SUB R10, 1						; Volta a colocar em R10 o valor da linha anterior para desenhar os próximos objetos
		
		MOV R0, DIRECAO_3				; Guarda a direção atual deste objeto (só é alterado se tiver sido removido: direção DESTRUIDO)
		MOV [R0], R5
		
		MOV R0, DESENHO_3         
		MOV [R0], R4            		; Guarda a tabela atual do ovni/asteroide 3
		
desenha_4:
		MOV R0, DESENHO_4         
		MOV R4, [R0]        			; Lê o valor da tabela atual do objeto 4
		
		MOV R0, DIRECAO_4         
		MOV R5, [R0]        			; Lê o valor da direção do objeto 4
		
		CMP R5, DESTRUIDO				; Vê se a direção indica que este ovni/asteroide foi removido
		JZ  fim_ecra					; Se tiver sido removido, não desenha este ovni/asteroide
		
		CALL decide_ecra                ; Escolhe o ecrã consoante for asteroide ou nave inimiga
		
		CALL obter_col_antes			; Consoante a direção deste objeto, vai devolver em R9 a coluna onde ele está
		
		MOV R3, 0           			; Define a cor a 0
		CALL desenho_ovni   			; Apaga a imagem
		
		CALL obter_col_depois			; Consoante a direção deste objeto, vai devolver em R9 a nova coluna para o desenhar
		
		ADD R10, 1						; Atualiza o valor de R10 para uma linha a baixo
		
		CALL define_estado      		; Define a cor do objeto e o tamanho (para referência futura)
		CALL escolhe_prox       		; Decide se tem de mudar de tabela (aumentar o objeto)
		
		CALL desenho_ovni       		; Desenha o ovni/asteroide
		CALL boom						; Vê se colidiu com a nave e, se tiver colidido, toma as respetivas medidas
		SUB R10, 1						; Volta a colocar em R10 o valor da linha anterior para desenhar os próximos objetos
		
		MOV R0, DIRECAO_4				; Guarda a direção atual deste objeto (só é alterado se tiver sido removido: direção DESTRUIDO)
		MOV [R0], R5
		
		MOV R0, DESENHO_4         
		MOV [R0], R4            		; Guarda a tabela atual do ovni/asteroide 4
		
fim_ecra:                               ; Aqui vai vai se os ovnis/asteroides chegaram ao fim do ecrã
		ADD R10, 1						; Como já desenhou todos os objetos, atualiza a linha		
		MOV R0, LINHA					
		CMP R10, R0						; Vê se a linha de referência é igual à da nave (chegou ao fim do ecrã)             
		JNZ save                		; Se ainda não chegou ao fim do ecrã, guarda o valor atual
		
		MOV R0, APAGA_ECRA				; Se os ovnis/asteroides chegaram ao fim, vão ser apagados
		
		MOV R1, ECRA_ASTEROIDES			; Apaga o ecrã que tem os asteroides
		MOV [R0], R1
		
		MOV R1, ECRA_OVNIS				; Apaga o ecrã que tem os ovnis
		MOV [R0], R1
		
		MOV R0, COLUNA_DIR				; Altera o valor da coluna dos objetos que vão para a direita para o seu valor inicial
		MOV R1, COLUNA_DIR_IN
		MOV [R0], R1
		
		MOV R0, COLUNA_ESQ				; Altera o valor da coluna dos objetos que vão para a esquerda para o seu valor inicial
		MOV R1, COLUNA_ESQ_IN
		MOV [R0], R1
		
		MOV R10, LINHA_INICIAL  		; Altera o valor da linha atual para o valor inicial
		
save:	MOV R0, LINHA_DESENHO         
		MOV [R0], R10           		; Guarda o valor da linha atual dos ovnis/asteroides
		
		MOV R0, COLUNA_ESQ				; Lê o valor da coluna dos objetos da esquerda
		MOV R8, [R0]
		SUB R8, 1						; Avança essa coluna um valor para a esquerda
		MOV [R0], R8					; Guarda esse novo valor
		
		MOV R0, COLUNA_DIR				; Lê o valor da coluna dos objetos da direita
		MOV R8, [R0]
		ADD R8, 1						; Avança essa coluna um valor para a direita
		MOV [R0], R8					; Guarda esse novo valor
		
		
		POP R10
		POP R9
		POP R8
		POP R7
		POP R6
		POP R5
		POP R4
		POP R3
		POP R2
		POP R1
		POP R0
		RFE	
		
; ********************************************************************************************************************************************
; Esta rotina vai desenhar um objeto
;
; ENTRADAS: R2 (ecrã onde desenhar), R3 (cor do objeto), R4 (tabela a desenhar), R9 (coluna do canto superior esq), R10 (linha desse canto)
; SAIDAS:
; ********************************************************************************************************************************************
desenho_ovni:
		PUSH R0
		PUSH R1
		PUSH R2	
		PUSH R4
		PUSH R5
		PUSH R6
		PUSH R7
		PUSH R8
		PUSH R9
		PUSH R10
		          
		MOV R8, 0                    	; CONTADOR
		MOV R1, R10						; Move o número de linhas para uma variável auxiliar R1
		MOV R5, R2						; Reinicia o valor de colunas 
variaveis:            
		MOV R6,[R4]						; R6 recebe uma linha da tabela de desenho
		CMP R6, 00002h					; Se chegar ao Terminador (última linha da tabela) irá avançar uma coluna ou linha para continuar o desenho
		JZ avancar_coluna
		MOV R2, R9						; Move o número de colunas para uma variável auxiliar R2
		
		
ciclo:	MOV  R7, 10000b					
		AND R7, R6						; Esta função irá permitir desenharmos apenas as posições das tabelas com valor de 1, avaliando o bit mais á esquerda da linha da tabela e comparando com 1, desenhando caso seja 1 também
		JNZ desenhar
		
continuacao:
		SHL R6, 1						; Avança uma posição na linha da tabela
		ADD R2, 1         				; Avança uma coluna
		ADD R8, 1						; Adiciona um ao valor do Contador
		CMP R8, 6						; Compara o valor do Contador com 6 para saber se chegou ao ultimo valor da linha
		JZ  avancar_tabela 				; Caso seja, avança para a próxima linha da tabela
		JNZ ciclo						; Caso não avalia o próximo número da linha tabela
		
		
desenhar:	
		CALL escreve_pixel      		; Escreve o pixel no ecrã
		JMP continuacao					; Prossegue para a próxima posicao

avancar_tabela:
		MOV R8, 0						; Reinicia o contador
		ADD R4, 2						; Avança para a próxima linha da tabela
		ADD R1, 1						; Adiciona uma linha no ecrã para continuar o desenho
		MOV R2, R9						; Reinicia a coluna para começar a desenhar sempre na mesma coluna à esquerda
		JMP variaveis
		
		
avancar_coluna:
		
		POP R10
		POP R9
		POP R8
		POP R7	
		POP R6
		POP R5
		POP R4
		POP R2	
		POP R1
		POP R0
		RET                      		; Return principal da função ************************************

escreve_pixel:
		PUSH  R0
 
		MOV  R0, DEFINE_LINHA
		MOV  [R0], R1           		; Seleciona a linha
		
    
		MOV  R0, DEFINE_COLUNA
		MOV  [R0], R2           		; Seleciona a coluna
		
		MOV  R0, ESCOLHE_ECRA
		MOV [R0], R5
		
    
		MOV  R0, DEFINE_PIXEL            ; Seleciona a cor
		MOV  [R0], R3
    
		POP  R0
		RET
; ********************************************************************************************************************************************
; Esta rotina vai decidir qual é a tabela que vai ser usada para desenhar o próximo ovni/asteroide
;
; ENTRADAS: R3 (cor do objeto), R7 (tamanho do novo objeto a desenhar)
; SAIDAS: R4 (endereço da nova tabela a desenhar)
; ********************************************************************************************************************************************

escolhe_prox:
		PUSH R0
		PUSH R7
		
		
		MOV R0, [R4+4]
		MOV R1, 100b
		AND R1, R0
		JZ  eh_asteroide					; Se for vai atualizar a tabela para uma de um asteroide
	
		MOV R4, tabela_cinzento_pequeno_ovni		; Atualiza o valor da tabela para a do ovni pequeno
		MOV R0, 12							; Coloca em R0 a distância entre a primeira linha de duas tabelas do mesmo tipo
		MUL R7, R0 							; Multiplica essa distância pelo tamanho do novo ovni (0, 1 ou 2)
		ADD R4, R7							; Atualiza o endereço da tabela para aquele que é efetivamente suposto
	

		POP R7
		POP R0
		RET	
	
eh_asteroide:
		MOV R4, tabela_cinzento_pequeno_ast			; Atualiza o valor da tabela para a do asteroide pequeno
		MOV R0, 12							; Coloca em R0 a distância entre a primeira linha de duas tabelas do mesmo tipo
		MUL R7, R0							; Multiplica essa distância pelo tamanho do novo asteroide(0, 1 ou 2)
		ADD R4, R7							; Atualiza o endereço da tabela para aquele que é efetivamente suposto
	
		POP R7
		POP R0
		RET
; ********************************************************************************************************************************************
; Esta rotina vai decidir qual é a cor do objeto e o tamanho que vai tomar
;
; ENTRADAS: R4 (tabela do objeto atual), R10 (linha atual do objeto)
; SAIDAS: R3 (cor do pixel do novo objeto), R7 (tamanho do novo objeto a desenhar: 0-pequeno, 1-medio, 2-grande)
; ********************************************************************************************************************************************	
define_estado:
		PUSH R0
		PUSH R4
		PUSH R5
		PUSH R10
		
		CMP R10, 6
		JLE mudar_cor_cinzento
		
		MOV R5, 100b
		MOV R0, [R4 + 4]					; Vai buscar o valor da terceira linha da tabela (valor do inicio mais dois endereços a baixo)
		
		AND R0, R5							; Altera todos os bits dessa linha para zero menos o do meio
		JNZ eh_ovni							; Se o resultado não for zero (pixel do meio preenchido) vai definir a cor para um ovni
		MOV R3, COR_PIXEL_GREEN				; Define a cor como sendo a do asteroide
		JMP tamanho							; Vai definir o tamanho
eh_ovni:MOV R3, COR_PIXEL_RED				; Define a cor como sendo a do ovni
		JMP tamanho
mudar_cor_cinzento:MOV R3, COR_PIXEL_CINZENTO				; Define a cor como cinzento

		
		
tamanho:
		MOV R5, 3							; Vê se a linha atual já é a 3
		CMP R10, R5							; Se já tiver chegado a essa linha ou tiver ultrapassado vai definir o tamanho como pixel cinzento
		JLE pedra_pequena
		
		MOV R5, 6							; Vê se a linha atual já é a 6
		CMP R10, R5							; Se já tiver chegado a essa linha ou tiver ultrapassado vai definir o tamanho como quadrado cinzento
		JLE pedra_media

		MOV R5, 12							
		CMP R10, R5							; Vê se a linha atual já é a 12
		JGE grande							; Se já tiver chegado a essa linha ou tiver ultrapassado vai definir o tamanho como grande
		
		MOV R5, 9							; Vê se a linha atual já é a 9
		CMP R10, R5							; Se já tiver chegado a essa linha ou tiver ultrapassado vai definir o tamanho como médio
		JGE medio
		
		MOV R7, 2							; Define o tamanho como pequeno
		JMP draw							; Sai da rotina para ir desenhar o objeto
		
medio:  MOV R7, 3							; Define o tamanho como medio
		JMP draw							; Sai da rotina para ir desenhar o objeto
	
grande:	MOV R7, 4							; Define o tamanho como grande
		JMP draw
pedra_pequena: MOV R7, 0					; Define o tamanho como um pixel cinzento
				JMP draw
				
pedra_media: MOV R7, 1						; Define o tamanho como um quadrado cinzento
draw:

		POP R10
		POP R5
		POP R4
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai decidir qual é a coluna onde o objeto está
;
; ENTRADAS: R5 (direção em que o objeto está a ir)
; SAIDAS: R9 (coluna onde o objeto está desenhado)
; ********************************************************************************************************************************************

obter_col_antes:
		PUSH R0
		PUSH R5
		
		CMP R5, 0						; Vê se a direção é a esquerda
		JZ  left1						; Se for, vai definir a respetiva coluna
		
		CMP R5, 1						; Vê se a direção é o centro
		JZ  center						; Se for, vai definir a respetiva coluna
		
		MOV R0, COLUNA_DIR				         
		MOV R9, [R0]        			; Lê o valor da coluna atual do ovni da direita
		JMP done1						; Sai da rotina
		
left1:  MOV R0, COLUNA_ESQ			         
		MOV R9, [R0]        			; Lê o valor da coluna atual do ovni da esquerda
		JMP done1						; Sai da rotina

center: MOV R9, COLUNA_CEN_IN   		; Lê o valor da coluna do ovni do centro (sempre a mesma)
		
done1:		
		POP R5
		POP R0
		
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai decidir qual é a coluna onde o objeto tem de ser desenhado
;
; ENTRADAS: R5 (direção em que o objeto está a ir), R9 (coluna onde o objeto estava desenhado)
; SAIDAS: R9 (coluna onde o objeto vai ser desenhado)
; ********************************************************************************************************************************************
		
obter_col_depois:
		PUSH R0
		PUSH R5
		
		CMP R5, 0						; Vê se a direção é a esquerda
		JZ  left2						; Se for, vai definir a respetiva coluna
		
		CMP R5, 1						; Vê se a direção é o centro
		JZ  done2						; Se for, não vai alterar a coluna
		
		ADD R9, 1						; Se a direção for a direita, vai deslocar a coluna para a direita
		JMP done2						; Sai do rotina
		
left2:  SUB R9, 1						; Vai deslocar a colunar para a esquerda	
		
done2:		
		POP R5
		POP R0
		
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai gerar aleatóriamente uma figura e uma direção para essa figura
;
; ENTRADAS: R6 (número incrementado frequentemente com um valor qualquer)
; SAIDAS: R4 (tabela de um ovni/asteroide em versão pequena), R5 (Direção do tipo 0, 1 ou 2: ESQ, CENTRO ou DIR respetivamente)
; ********************************************************************************************************************************************		
randomize:
		PUSH R0
		PUSH R1
		PUSH R6
			
		MOV R0, R6						; Faz uma cópia de R6 para utilizar também para gerar uma direção
			
		MOV R1, 11b						
		AND R6, R1						; Põe-se a zero todos os bits menos os dois de menor peso
		JZ  spawn_ast					; Haverá cerca de 25% de hipóteses desses dois bits estarem a 0, logo vão, nesse caso, gerar um asteroide
			
		MOV R4, tabela_cinzento_pequeno_ovni; Caso contrário, vai gerar um ovni
		JMP direction					; Vai agora gerar uma direção
			
spawn_ast:									
		MOV R4, tabela_cinzento_pequeno_ast		; Vai então gerar um asteroide
			
direction:								; Aqui vai gerar uma direção aleatóriamente
		MOV R1, 3						
		MOD R0, R1						; Com o número pseudo-aleatório, vai fazer o resto da divisão inteira por 3, obtendo cerca de 1/3 de probabilidades
			
		MOV R5, R0						; Obtendo assim um valor entre 0 e 2, guarda-o como a direção
			
		POP R6
		POP R1
		POP R0
		RET

; ********************************************************************************************************************************************
; Esta rotina vai escolher o ecrã onde o objeto vai ser desenhado
;
; ENTRADAS: R4 (tabela atual do objeto)
; SAIDAS: R2 (ecrã onde o objeto tem de ser desenhado)
; ********************************************************************************************************************************************		
decide_ecra:
		PUSH R0
		PUSH R1
		PUSH R4
		
		MOV R0, 100b					
		MOV R1, [R4 + 4]				; Seleciona a terceira linha da tabela
		
		AND R1, R0						; Usando 100b, coloca todos os bits a 0 menos o do meio (terceiro de menor peso da terceira linha)
		CMP R1, 0						; Vê se o bit do meio está preenchido
		JZ  ecra_ast					; Se não estiver, seleciona o ecrã dos asteroides
		
		MOV R2, ECRA_OVNIS				; Se estiver preenchido, seleciona o ecrã dos ovnis
		
		POP R4
		POP R1
		POP R0
		RET
			
ecra_ast:
		MOV R2, ECRA_ASTEROIDES			; Seleciona então ecrã dos asteroides
		POP R4
		POP R1
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta é a rotina de interrupção 1 que acontece a cada 200 ms. O seu objetivo é mover o missil e todas as ações associadas,
; tais como testar as colisões do missil com os ovnis.
;
; Não existem entradas nem saídas pois todos os valores necesários estão guardados em memória.
; ********************************************************************************************************************************************

rot_int_1:
		PUSH R0
		PUSH R1
		PUSH R3
		PUSH R4
		PUSH R9
		PUSH R10
		
		MOV R0, HA_EXPLOSAO				; Lê na memória se existiu uma explosão de um ovni
		MOV R1, [R0]
		CMP R1, 0						; Testa se houve uma explosão
		JZ  n_ha_explosao				; Se não tiver havido, não age sobre o desenho da explosão
		
		MOV R0, COLUNA_EXPLOSAO			; Lê na memória o valor da coluna onde a explosão ocorreu
		MOV R9, [R0]
		
		MOV R0, LINHA_EXPLOSAO			; Lê na memória o valor da linha onde a explosão ocorreu
		MOV R10, [R0]
		
		MOV R3, 0						; Põe a cor a 0
		MOV R2, ECRA_OVNIS
		MOV R4, tabela_ovni_grande		; Seleciona a tabela com a forma do ovni grande
		CALL desenho_ovni				; Apaga o desenho do ovni explodido
		
		MOV R0, HA_EXPLOSAO				; Indica agora que a explosão já foi considerada
		MOV R1, 0
		MOV [R0], R1 
		
n_ha_explosao:	
		
		CALL colisao					; Vai testar se o missil colidiu com um ovni
		MOV R0, COLUNA_MISSIL			; Lê a coluna atual do missil
		MOV R9, [R0]
		
		MOV R0, DEFINE_COLUNA			; Define essa coluna como sendo o sítio onde o missil vai ser desenhado
		MOV [R0], R9
		
		MOV R0, LINHA_MISSIL			; Lê a linha atual do missil
		MOV R10, [R0]
		
		MOV R0, DEFINE_LINHA			; Seleciona essa linha para apagar o missil dessa linha
		MOV [R0], R10
		
		MOV R0, ECRA_MISSIL				; Seleciona o ecrã do missil
		MOV R1, ESCOLHE_IMAGEM
		MOV [R1], R0
		
		MOV R0, DEFINE_PIXEL			; Apaga o missil da sua linha atual
		MOV R1, 0
		MOV [R0], R1
		
		MOV R0, ALCANCE_MISSIL
		CMP R10, R0						; Vê se o missil ultrapassou o seu alcance
		JLE reset						; Se tiver ultrapassado, vai indicar que outro pode ser lançado
		
		SUB R10, 1						; Se não, vai alterar a linha para uma acima				
		
		MOV R0, DEFINE_LINHA			; Seleciona esta nova linha
		MOV [R0], R10
		
		MOV R0, DEFINE_PIXEL			
		MOV R1, COR_PIXEL_MISSIL		; Seleciona a cor do missil
		MOV [R0], R1					; Desenha o missil nesta nova linha
		
		MOV R0, LINHA_MISSIL			; Atualiza na memória esta nova linha
		MOV [R0], R10

		POP R10
		POP R9
		POP R4
		POP R3
		POP R1
		POP R0
		RFE
		
reset:	MOV R0, LINHA_MISSIL
		MOV R1, -1
		MOV [R0], R1					; Coloca a linha do missil a -1 (valor apenas indicativo de missil não lançado)
		
		POP R10
		POP R9
		POP R4
		POP R3
		POP R1
		POP R0
		RFE
		
; ********************************************************************************************************************************************
; Esta é a rotina de interrupção 2 que acontece a cada 3 s. O seu objetivo é decrementar a energia em 5 pontos
;
; Não existem entradas nem saídas pois todos os valores necesários estão guardados em memória.
; ********************************************************************************************************************************************

rot_int_2:
		
		PUSH R11
		PUSH R0
		
		MOV R0, END_ENERGIA				; Lê na memória o valor da energia atual
		MOV R11, [R0]
		SUB R11, 5						; Subtrai 5 pontos à energia
		CALL conversao					; Vai converter esse valor para decimal e escrever nos displays
		MOV [R0], R11					; Gaurda o novo valor da energia
		
		POP R0
		POP R11
		
		RFE
		
; ********************************************************************************************************************************************
; Esta rotina vai converter um valor de hexadecimal para decimal e escreve-o nos displays
;
; ENTRADAS: R11 (Valor que vai converter e escrever nos displays)
; SAÍDAS:
; ********************************************************************************************************************************************

conversao:	
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R5
	
		MOV R0, R11
		MOV R1, 0
		MOV R2, 0
		MOV R3, 0
ciclo_conversao:
		MOV R4, R0                      ; Copia R6 para R7 para se poder fazer a conversão
		MOV R5, DECIMA_AUX
		MOD R4, R5                      ; R7 passa a ter o valor do último algarismo
		CMP R2, 0                       ; Vê se o ciclo ainda não foi feito uma vez
		JZ  skip_conv                   ; Se ainda não, então R10 ainda é 0, logo não pode fazer SHL
		CMP R2, 1                       ; Vê se o ciclo já foi feito uma (e uma só) vez
		JNZ skip2_conv                  ; Caso já tenha sido feito uma vez, vai fazer SHL de 8 bits
		SHL R4, 4                       ; R7 é deslocado 4 bits para a esquerda para se poder adicionar o algarismo que lá estava
		JMP skip3_conv                  ; Vai adicionar o novo algarismo
skip2_conv:  
		SHL R4, 8                       ; R7 é deslocado 8 bits para a esquerda para se poder adicionar os algarismos que lá estavam
skip3_conv:
		NOP                             ; Esta intrução serve apenas de endereço para skip 3
skip_conv:
		OR  R1, R4                      ; adiciona o novo algarismo ao valor convertido
		ADD R2, 1                       ; Aumenta o contador que avalia o número de vezes que o ciclo já foi feito             
		DIV R0, R5						; R5 guardará apenas os algarismos ainda não registados em R7
		CMP R0, 0                       ; Vê se ainda existem algarismos por testar
		JNZ ciclo_conversao             ; Se sim, vai testá-los
		MOV R3, DISPLAYS
		MOV [R3], R1
	
		POP R5
		POP R4
		POP R3
		POP R2
		POP R1
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai testar se o missil acertou num ovni. Se tiver acertado, decandeia a explosão desse ovni.
;
; ENTRADAS: R5 (Direção em que o objeto vem)
; SAÍDAS: R5 (Alterado caso o objeto for destruído)
; ********************************************************************************************************************************************

colisao:
		PUSH R0
		PUSH R9
		PUSH R10
		
		MOV R0, LINHA_MISSIL			; Lê na memória o valor da linha atual do missil
		MOV R9, [R0]
		
		MOV R0, LINHA_DESENHO			; Lê na memória o valor da linha atual dos ovnis
		MOV R10, [R0]
		
		CMP R10, R9						; Vê se o misil já ultrapassou o ovni
		JGT too_soon					; Se tiver ultrapassado, não houve colisão
		
		ADD R10, COMPRIMENTO_OVNI_G		; Vai testar agora a última linha do ovni
		
		CMP R10, R9						; Vê se o missil ainda não chegou ao ovni
		JLT too_soon					; Se ainda não tiver chegado, sai da rotina
		
		SUB R10, COMPRIMENTO_OVNI_G		; Põe o valor da linha do ovni no da primeira linha outra vez
		
		JMP verifica_coluna				; Vai verificar se o missil está numa coluna coincidente a um ovni
		

too_soon:		
		POP R10
		POP R9
		POP R0
		RET
		
verifica_coluna:		
		MOV R0, COLUNA_MISSIL			; Lê na memória o valor da coluna do missil
		MOV R9, [R0]
		
		MOV R0, DESENHO_1
		MOV R4, [R0]					; Lê na memória a tabela atual do primeiro desenho
		MOV R0, DIRECAO_1				
		MOV R5, [R0]					; Lê na memória a direção atual do primeiro desenho
		CALL ha_colisao					; Chama a rotina que testa se há colisão do missil com este ovni/asteroide
		MOV [R0], R5
		
		MOV R0, DESENHO_2				; Lê na memória a tabela atual do segundo desenho
		MOV R4, [R0]
		MOV R0, DIRECAO_2				; Lê na memória a direção atual do segundo desenho
		MOV R5, [R0]
		CALL ha_colisao					; Chama a rotina que testa se há colisão do missil com este ovni/asteroide
		MOV [R0], R5
		
		MOV R0, DESENHO_3				; Lê na memória a tabela atual do terceiro desenho
		MOV R4, [R0]
		MOV R0, DIRECAO_3				; Lê na memória a direção atual do segundo desenho
		MOV R5, [R0]
		CALL ha_colisao					; Chama a rotina que testa se há colisão do missil com este ovni/asteroide
		MOV [R0], R5
		
		MOV R0, DESENHO_4				; Lê na memória a tabela atual do terceiro desenho
		MOV R4, [R0]
		MOV R0, DIRECAO_4				; Lê na memória a direção atual do segundo desenho
		MOV R5, [R0]
		CALL ha_colisao					; Chama a rotina que testa se há colisão do missil com este ovni/asteroide
		MOV [R0], R5
		
		
		POP R10
		POP R9
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai testar se o missil está numa coluna que interceta um ovni. Se estiver, chama a rotina de explosão.
;
; ENTRADAS: R5 (Direção em que o objeto vem)
; SAÍDAS: R5 (Alterado caso o objeto for destruído)
; ********************************************************************************************************************************************
ha_colisao:
		PUSH R0
		PUSH R1
		PUSH R7
		PUSH R8
		PUSH R9
		
		MOV R0, 100b					; Guarda o valor de 100b para selecionar o 3º bit de menor peso
		MOV R1, [R4 + 4]				; Lê na memória o valor da terceira linha da tabela deste desenho
		
		AND R1, R0						; Vê se o pixel do meio está preenchido
		JZ  n_ha_colisao				; Se não estiver, então é um asteroide e não existe colisão
		
		CMP R5, ESQUERDA				; Se estiver, então vê se este objeto está a ir para a esquerda
		JZ  colisao_esq
		
		CMP R5, DIREITA					; Vê se este objeto está a ir para a direita
		JZ  colisao_dir
		
		MOV R8, COLUNA_CEN_IN			; Se não estiver a ir para a direita nem para a esquerda, seleciona a coluna dos desenhos do meio
		JMP intervalo					; Vai testar se o missil está entre a primeira e última coluna do ovni
		
colisao_esq:
		MOV R0, COLUNA_ESQ				; Seleciona a coluna atual dos desenhos da esquerda
		MOV R8, [R0]
		JMP intervalo					; Vai testar se o missil está entre a primeira e última coluna do ovni
		
colisao_dir:
		MOV R0, COLUNA_DIR				; Seleciona a coluna atual dos desenhos da direita
		MOV R8, [R0]
		
intervalo:								; Vai testar se o missil está entre a primeira e última coluna do ovni
		CMP R9, R8
		JLT  n_ha_colisao				; Se o missil estiver numa coluna à esquerda da primeira coluna do ovni, então não houve colisão
		MOV R7, R8						; Faz uma cópia de R8, para se poder testar a última coluna do ovni
		ADD R7, COMPRIMENTO_OVNI_G		; Coloca-se em R7 então o valor dessa última coluna
		CMP R9, R7						
		JGT n_ha_colisao				; Se o missil estiver numa coluna à direita da última coluna do ovni, então não houve colisão
		CALL explosao					; Aqui já sabemos que ocorreu uma colisão com um ovni, logo vai explodir esse ovni
		
n_ha_colisao:
		POP R9
		POP R8
		POP R7
		POP R1
		POP R0
		RET
		
; ********************************************************************************************************************************************
; Esta rotina vai desencadear os acontecimentos associados à explosão de um OVNI.
;
; ENTRADAS: R8 (coluna de referência do OVNI que foi atingido), R10 (linha de referência do OVNI que foi atingido)
; SAÍDAS: R5 (alterado para indicar que foi destruído)
; ********************************************************************************************************************************************
explosao:
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R9
		PUSH R10
		PUSH R11
		
		MOV R5, DESTRUIDO				; Indica que este OVNI foi destruído (não o vai desenhar mais)
		
		MOV R3, COR_PIXEL_EXPLOSAO		; Seleciona a cor definida para a explosão
		MOV R4, tabela_ovni_grande		; Seleciona a tabela de um ovni grande (para cobrir o OVNI explodido com a nova cor)
		MOV R2, ECRA_OVNIS				; Seleciona o ecrã onde os OVNIS estão desenhados
		MOV R9, R8						; Coloca o valor da coluna do OVNI em R9, pois esssa é a entrada de desenho_ovni
		CALL desenho_ovni				; Desenha na cor da explosão por cima do OVNI
		
		MOV R3, HA_EXPLOSAO				; Altera na memória o estado de que houve uma explosão
		MOV R4, 1						; O valor de R4 não é relevante, simplesmente não pode ser 0
		MOV [R3], R4
		
		MOV R0, COLUNA_EXPLOSAO			; Guarda esta coluna onde foi desenhada a explosão
		MOV [R0], R9
		
		MOV R0, INICIA_VIDEO			; Seleciona o som nº 6 (som da explosão)
		MOV R1, 6
		MOV [R0], R1
		
		MOV R0, LINHA_DESENHO			; Atualiza o valor da linha onde o desenho está atualmente
		MOV R10, [R0]
		
		MOV R0, LINHA_EXPLOSAO			; Guarda esta linha onde foi desenhada a explosão
		MOV [R0], R10
		
		MOV R0, END_ENERGIA				; Lê na memória o valor atual da energia
		MOV R11, [R0]
		ADD R11, 5						; Adiciona 5 a esse valor	
		CALL conversao					; Vai converter o resultao a decimal e vai escrevê-lo nos displays
		MOV [R0], R11
		
		POP R11
		POP R10
		POP R9
		POP R4
		POP R3
		POP R2
		POP R1
		POP R0
		RET

; ********************************************************************************************************************************************
; Esta rotina vai testar se houve uma colisão da nave com um ovni/asteroide. Se houver chama a rotina que lida com essa colisão.
;
; ENTRADAS: R10 (linha em que este ovni/asteroide está)
; SAÍDAS: R5 (alterado apenas se a colisão for com um asteroide, indicando que foi destruído, neste caso, apanhado)
; ********************************************************************************************************************************************		
boom:
		PUSH R0
		PUSH R1
		PUSH R4
		PUSH R9
		PUSH R10
		
		ADD R10, COMPRIMENTO_OVNI_G		; Para testar se houve uma colisão, seleciona a linha de baixo do ovni/asteroide
		MOV R0, LINHA					; Lê o valor da linha onde a nave está
		CMP R10, R0						; Vê se o ovni/asteroide chegou à linha da nave
		JLT n_ha_boom					; Se ainda não chegou, vai sair da rotina
		
		MOV R0, COLUNA_NAVE				; Lê na memória qual a coluna onde a nave está (primeira coluna do desenho)
		MOV R1, [R0]
		
		ADD R1, COMPRIMENTO_OVNI_G		; Selciona a última coluna da nave
		CMP R1, R9						; Compara com a primeira coluna do ovni
		JLT n_ha_boom					; Se estiver à esquerda, então não houve colisão
		
		ADD R9, COMPRIMENTO_OVNI_G		; Seleciona agora a última coluna do OVNI
		SUB R1, COMPRIMENTO_OVNI_G		; Seleciona de novo a primeira coluna da nave
		CMP R1, R9						; Compara as duas
		JGT n_ha_boom					; Se a primeira da nave estiver à direita da última da nave, então não houve colisão
		
		CALL boomed						; Se aqui chegar, então houve colisão e vai lidar com ela		
n_ha_boom:
		POP R10
		POP R9
		POP R4
		POP R1
		POP R0
		RET

; ********************************************************************************************************************************************
; Esta rotina vai desencadear os acontecimentos associados à colisão da nave com um ovni/asteroide.
;
; ENTRADAS: R10 (última linha do ovni/asteroide)
; SAÍDAS: R5 (alterado apenas se a colisão for com um asteroide, indicando que foi destruído, neste caso, apanhado)
; ********************************************************************************************************************************************		
boomed:
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R11
		
		MOV R1, [R4 + 4]				; Seleciona a terceira linha da tabela deste ovni/asteroide
		MOV R0, 100b					
		AND R1, R0						; Seleciona o bit do meio desta terceira linha
		JZ  boom_ast					; Se este bit for 0 (pixel do meio não pintado) a colisão foi com um asteroide
		
		MOV R0, END_ENERGIA				; Quando colide com um OVNI, coloca o valor da energia a 0 para indicar game over
		MOV R1, 0
		MOV [R0], R1
		JMP boom_ovni					; Sai da rotina
		
boom_ast:
		MOV R0, END_ENERGIA				; Lê na memória o valor da energia atual
		MOV R11, [R0]
		MOV R1, 10						; Adiciona a esse valor 10 pontos
		ADD R11, R1
		CALL conversao					; Converte esse valor para decimal e escreve nos displays
		MOV [R0], R11					; Guarda esse novo valor na memória
		
		SUB R10, COMPRIMENTO_OVNI_G		; Seleciona de novo a primeira linha do asteroide
		SUB R9, COMPRIMENTO_OVNI_G		; Seleciona de novo a primeira coluna do asteroide
		MOV R3, 0						; Seleciona a cor a 0
		MOV R2, ECRA_ASTEROIDES			; Seleciona o ecrã onde estão desenhados os asteroides
		CALL desenho_ovni				; Apaga este asteroide
		
		MOV R5, DESTRUIDO				; Indica que este asteroide foi destruído (apanhado)
boom_ovni:	
		POP R11
		POP R3
		POP R2
		POP R1
		POP R0
		RET
