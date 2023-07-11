algoritmo "Jogo Termo"
// JOGO, TERMO, ONDE É SORTEADO UMA PALAVRA E
//O JOGADOR DEVE ACHAR QUAL PALAVRA É POR MEIO DE CHUTES DE LETRAS
//arquivo com as palavras que será usado no sorteio
//alterar o local do arquivo no procedimento leituraBd e letras

var
palavra:vetor[0..37] de caracter
letraSort,letraChute,acertou,letraDica:vetor[1..5] de caracter
alfa:vetor[0..26,1..6] de caracter
t:vetor[1..5] de inteiro
chute,dicaSort:caracter
s_n:caracter
cont,errou,fase,limite:inteiro
////////////////////////////////////////////////////////////////////////////////
procedimento leituraBD
arquivo "D:\Colocar o endereço\termos.txt"
var
 x:inteiro
inicio
  para x de 1 ate 37 faca
    leia(palavra[x])
    palavra[x]<-palavra[x]
    limpatela
 fimpara
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento letras
arquivo "D:\Colocar o endereço\letra.txt"
var
 x,y:inteiro
inicio
 para x de 0 ate 26 faca
  para y de 1 ate 6 faca
   leia(alfa[x,y])
   limpatela
  fimpara
 fimpara

fimprocedimento
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
procedimento logo
inicio
escreval("             ___________  _______  ______       ___  ___    ______ ")
escreval("            |           ||   ____||   _  \     |   \/   |  /  __  \")
escreval("            `---|  |----`|  |__   |  |_)  |    |  \  /  | |  |  |  |")
escreval("                |  |     |   __|  |      /     |  |\/|  | |  |  |  |")
escreval("                |  |     |  |____ |  |\  \----.|  |  |  | |  `--'  |")
escreval("                |__|     |_______|| _| `._____||__|  |__|  \______/")
escreval(" ")

fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento roleta
var
cont:inteiro
inicio
escreval("estamos sorteando uma palavra de 5 letras")
   palavra[0]<-palavra[randi(36)+1]
   //palavra[0]<-"corre"  teste
    para cont de 1 ate 5 faca
     letraSort[cont]<-copia(palavra[0],cont,1)//desmenbrando a palavra sorteada
    fimpara
   para cont de 1 ate 5 faca

    escolha cont
     caso 1
      limpatela
       logo
      timer 30
 escreval("                    estamos sorteando uma palavra de 5 letras")
 escreval("                  _         ___        ___        ___        ___     ")
 escreval("                 /_\       |   \      / _ \      | _ )      / __|    ")
 escreval("                / _ \      | |) |    | (_) |     | _ \     | (__     ")
 escreval("               /_/ \_\     |___/      \___/      |___/      \___|    ")
 escreval("               _______    _______    _______    _______    _______   ")
     timer 0
     caso 2
     limpatela
     logo
     escreval("                    estamos sorteando uma palavra de 5 letras")
     timer 30
 escreval("                _____       ___        ___       __  __      ___     ")
 escreval("               |_   _|     | __|      | _ \     |  \/  |    / _ \    ")
 escreval("                 | |       | _|       |   /     | |\/| |   | (_) |   ")
 escreval("                 |_|       |___|      |_|_\     |_|  |_|    \___/    ")
 escreval("               _______    _______    _______    ________   _______   ")
    timer 0
   caso 3
      limpatela
       logo
       escreval("                    estamos sorteando uma palavra de 5 letras")
      timer 30
 escreval("                  ___        ___        ___        ___        _      ")
 escreval("                 / __|      / _ \      |_ _|      / __|      /_\     ")
 escreval("                | (__      | (_) |      | |       \__ \     / _ \    ")
 escreval("                 \___|      \___/      |___|      |___/    /_/ \_\   ")
  escreval("               _______    _______    _______    _______   _______   ")
     timer 0
    caso 4
     limpatela
     logo
     escreval("                    estamos sorteando uma palavra de 5 letras")
     timer 30
 escreval("                  ___         _         ___        ___       ___     ")
 escreval("                 / __|       /_\       | _ )      | __|     | _ \    ")
 escreval("                 \__ \      / _ \      | _ \      | _|      |   /    ")
 escreval("                 |___/     /_/ \_\     |___/      |___|     |_|_\    ")
  escreval("               _______    _______    _______    _______   _______   ")
    timer 0
    caso 5
     limpatela
     logo
     escreval("                       tente acertar a palavra de 5 letras")
     timer 30
 escreval("")
 escreval("                 ___       ___        ___        ___        ___      ")
 escreval("                |__ \     |__ \      |__ \      |__ \      |__ \     ")
 escreval("                  /_/       /_/        /_/        /_/        /_/     ")
 escreval("                  (_)       (_)        (_)        (_)        (_)     ")
 escreval("               _______    _______    _______    ________   _______   ")
 escreval("")
  //escreval(palavra[0])
  //usado para teste, conseguir resposta
    timer 0
   fimescolha
   fimpara
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento fases
var
continuar:caracter
inicio
 continuar<-"."
    escolha fase
     caso 2
      limite<-9
      escreval("")
      logo
      escreval("")
      escreval("               _______      ___           _______. _______     ___   ")
      escreval("              |   ____|    /   \         /       ||   ____|   |__ \  ")
      escreval("              |  |__      /  ^  \       |   (----`|  |__         ) | ")
      escreval("              |   __|    /  /_\  \       \   \    |   __|       / /  ")
      escreval("              |  |      /  _____  \  .----)   |   |  |____     / /_  ")
      escreval("              |__|     /__/     \__\ |_______/    |_______|   |____| ")
      escreval("")
      escreval("                  nessa fase você podera errar apenas 10 vezes")
      escreval("")
      escreval("                                (PRESSIONE ENTER)")
      leia(continuar)
      roleta
     caso 3
      limite<-4
      escreval("")
      logo
      escreval("")
      escreval("               _______      ___           _______. _______     ____  ")
      escreval("              |   ____|    /   \         /       ||   ____|   |___ \ ")
      escreval("              |  |__      /  ^  \       |   (----`|  |__        __) |")
      escreval("              |   __|    /  /_\  \       \   \    |   __|      |__ < ")
      escreval("              |  |      /  _____  \  .----)   |   |  |____     ___) |")
      escreval("              |__|     /__/     \__\ |_______/    |_______|   |____/ ")
      escreval("")
      escreval("                    nessa fase você podera errar apenas 5 vezes")
      escreval("                              e não terá nenhuma dica           ")
      escreval("")
      escreval("                                (PRESSIONE ENTER)")
      leia(continuar)
      roleta
     fimescolha
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento final
var
 x:inteiro
inicio
 se (chute=palavra[0]) entao
   escreval("")
   escreval("")
   escreval(" ____     ______     ____       ______     ____      ____      __  __    ____      ")
   escreval("/\  _`\  /\  _  \   /\  _`\    /\  _  \   /\  _`\   /\  _`\   /\ \/\ \  /\  _`\     ")
   escreval("\ \ \L\ \\ \ \L\ \  \ \ \L\ \  \ \ \L\ \  \ \ \L\ \ \ \ \L\_\ \ \ `\\ \ \ \,\L\_\   ")
   escreval(" \ \ ,__/ \ \  __ \  \ \ ,  /   \ \  __ \  \ \  _ <' \ \  _\L  \ \ , ` \ \/_\__ \   ")
   escreval("  \ \ \/   \ \ \/\ \  \ \ \\ \   \ \ \/\ \  \ \ \L\ \ \ \ \L\ \ \ \ \`\ \  /\ \L\ \ ")
   escreval("   \ \_\    \ \_\ \_\  \ \_\ \_\  \ \_\ \_\  \ \____/  \ \____/  \ \_\ \_\ \ `\____\")
   escreval("    \/_/     \/_/\/_/   \/_/\/ /   \/_/\/_/   \/___/    \/___/    \/_/\/_/  \/_____/")
   escreval("")
   escreval("")
   escreval("                      Parabéns você acertou a palavra")
   escreverAcerto
 senao
    para x de 1 ate 5 faca
     acertou[x]<-letraSort[x]
    fimpara
    chute<-palavra[0]
    fase<-4
    escreval("         _______  ______       ______        ______   __    __    _______ ")
    escreval("        |   ____||   _  \     |   _  \      /  __  \ |  |  |  |  |   ____|")
    escreval("        |  |__   |  |_)  |    |  |_)  |    |  |  |  ||  |  |  |  |  |__   ")
    escreval("        |   __|  |      /     |      /     |  |  |  ||  |  |  |  |   __|  ")
    escreval("        |  |____ |  |\  \----.|  |\  \----.|  `--'  ||  `--'  |  |  |     ")
    escreval("        |_______|| _| `._____|| _| `._____| \______/  \______/   |__|     ")
    escreval("")
    escreval("                          você perdeu. tente na proxima")
    escreval("")
    escreval("")
    escreval("                               a palavra certa é ")
    escreverAcerto
 fimse
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento acerto
var
 x,y:inteiro
inicio
 para x de 1 ate 5 faca//verificando se tem alguma letra na mesma posição da palavra sorteada
   se (letraSort[x]=letraChute[x]) entao
      acertou[x]<- letraChute[x]//para mostrar onde está a letra que acertou e ajudar na visualização
   senao
      acertou[x]<- "`"
      letraDica[x]<-letraSort[x]
      para y de 1 ate 5 faca  //verificar se tem a letra na palavra e se tem ver se ela se repete
        se (letraSort[x]=letraSort[y])e(letraSort[x]=letraChute[y]) entao
          escreval("                      a letra {",letraChute[y],"} se repete na palavra")
        senao
         se (letraSort[x]=letraChute[y]) entao
           escreval("               a letra {",letraChute[y],"} está ná palavra em outra posição")
         fimse
        fimse
      fimpara
   fimse
 fimpara
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento escreverAcerto
//escrever quais letras ele acertou
var
x,y:inteiro
esp:caracter
inicio
 esp<-"            "
 para x de 1 ate 5 faca
  t[x]<-asc(acertou[x])-96//a primeira letra no ASCII é 97 por tanto subtraio por 96 para dar a posição do alfabeto da letra desejada
 fimpara
  para y de 1 ate 6 faca//matriz onde t é a coluna(LETRA) que vai ser escrita
    escreval(esp+alfa[t[1],y]+alfa[t[2],y]+alfa[t[3],y]+alfa[t[4],y]+alfa[t[5],y])
   fimpara

fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento escreverChute

inicio
 para cont de 1 ate 5 faca
   letraChute[cont]<-copia(chute,cont,1)
   acertou[cont]<-copia(chute,cont,1)
   //escreva("[",letraChute[cont],"]":5)
 fimpara
 escreverAcerto
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
procedimento dica
//esse procedimento dá uma dica de acordo com a quantidade de erros.
var
igual,cont:inteiro
inicio
igual<-0
cont<-0
escolha errou
   caso 5
     limpatela
     escreval("")
     escreverAcerto
     escreval("")
     escreval("")
     escreval("                       a letra ",dicaSort," está na palavra")
  caso 7
     limpatela
     escreval("")
     para cont de 1 ate 2 faca
       se letraSort[cont]=letraChute[cont] entao
         igual<-igual+1
       fimse
     fimpara
     se igual<2 entao //verificando se ele acertou as 2 primeiras letras
      dicaSort<-copia(palavra[0],1,2)//se ele n acertou as duas primeiras, mostra pra ele
      escreverAcerto
      escreval("")
      escreval("")
      escreval("                       as 2 primeiras letras são ",dicaSort)
     senao
       escreverAcerto
       dicaSort<-copia(palavra[0],4,2)
       escreval("")
       escreval("")
       escreval("                        as 2 ultimas letras são ",dicaSort)
     fimse
  caso 15
     dicaSort<-copia(palavra[0],1,4)
      limpatela
     escreval("")
     escreval("")
     escreval("                             você é muito burro cara")
     escreval("                             vou te ajudar")
     escreval("                             as 4 primeiras letras são")
     escreval("                             ",dicaSort)
     escreval("                             por favor acerta agora!!")
  fimescolha
fimprocedimento
////////////////////////////////////////////////////////////////////////////////
inicio
//banco de dados
leituraBD
letras
 limite<-999
 logo
 escreval(" ")
 escreval(" ")
 escreval("                    olá esse é o jogo Termo no visualG 2.5")
 escreval("                   será sorteada uma palavra de 5 caracteres ")
 escreval("                 e você tera que adivinhar quer começar a jogar ?")
 escreval("")
 escreval("                              (ENTER PARA COMEÇAR)")
 escreval(" ")
   leia(s_n)

repita
 roleta
 fase<-1
 repita
    cont<-0
    repita
     repita   //verificando se a palavra tem 5 letras
       leia(chute)
       chute<-minusc(chute)
       se (compr(chute)<>5) entao
        escreval("só pode letras de 5 caracteres")
       fimse
     ate (compr(chute)=5)
     limpatela
     cont<-0
     escreval(" ")
     escreval("                                 seu chute")
      escreverChute
     escreval("            ------------------------------------------------------")
     se (chute <> palavra[0])e(errou<limite) entao
      escreval("")
      escreval("                            Você errou a palavra")
      cont<-0
      acerto
      escreval("")
      escreverAcerto
         errou<-errou+1
         escreval("")
         escreval("             ------------------------------------------------------")
         escreval("                      Tente acertar de novo,você consegue!!")
      se (errou >= 4)e(fase<>3) entao
       repita
        dicaSort<- letraDica[randi(5)+1]
       ate (dicaSort<>"")e(dicaSort<>" ")
         dica
      fimse
      cont<-0
      para cont de 1 ate 5 faca//zerando a letraDica a cada chute
       letraDica[cont]<-""
      fimpara
     senao
      limpatela
      cont<-0
      para cont de 1 ate 5 faca
          acertou[cont]<- letraChute[cont]
      fimpara
      final
       timer 600
     fimse
    ate (chute = palavra[0])//verifica se acertou a palavra sorteada
    fase<-fase+1
    limpatela
    timer 0
    fases
    errou<-0
 ate (fase>3)
 s_n<-""
 fase<-0
 escreval("")
 logo
 escreval("")
 escreval("")
 escreval("                           será sorteada outra palavra ")
 escreval("                           quer jogar novamente ?")
 escreval("                           (sim ou não)")
 leia(s_n)
ate (s_n="n")ou(s_n="nao")ou(s_n="não")
limpatela //laço para poder jogar o jogo de novo
escreval("")
escreval("")
escreval("Obrigado por jogar o meu jogo")
escreval("´´´´´´´´´´´´´´´´´´´´´´¶¶¶¶¶¶¶¶¶  ")
escreval("´´´´´´´´´´´´´´´´´´´´¶¶´´´´´´´´´´¶¶ ")
escreval("´´´´´´¶¶¶¶¶´´´´´´´¶¶´´´´´´´´´´´´´´¶¶ ")
escreval("´´´´´¶´´´´´¶´´´´¶¶´´´´´¶¶´´´´¶¶´´´´´¶¶ ")
escreval("´´´´´¶´´´´´¶´´´¶¶´´´´´´¶¶´´´´¶¶´´´´´´´¶¶ ")
escreval("´´´´´¶´´´´¶´´¶¶´´´´´´´´¶¶´´´´¶¶´´´´´´´´¶¶ ")
escreval("´´´´´´¶´´´¶´´´¶´´´´´´´´´´´´´´´´´´´´´´´´´¶¶ ")
escreval("´´´´¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´¶¶ ")
escreval("´´´¶´´´´´´´´´´´´¶´¶¶´´´´´´´´´´´´´¶¶´´´´´¶¶ ")
escreval("´´¶¶´´´´´´´´´´´´¶´´¶¶´´´´´´´´´´´´¶¶´´´´´¶¶")
escreval("´¶¶´´´¶¶¶¶¶¶¶¶¶¶¶´´´´¶¶´´´´´´´´¶¶´´´´´´´¶¶ ")
escreval("´¶´´´´´´´´´´´´´´´¶´´´´´¶¶¶¶¶¶¶´´´´´´´´´¶¶  ")
escreval("´¶¶´´´´´´´´´´´´´´¶´´´´´´´´´´´´´´´´´´´´¶¶ ")
escreval("´´¶´´´¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´´´´´´´´¶¶")
escreval("´´¶¶´´´´´´´´´´´¶´´¶¶´´´´´´´´´´´´´´´´¶¶")
escreval("´´´¶¶¶¶¶¶¶¶¶¶¶¶´´´´´¶¶´´´´´´´´´´´´¶¶")
escreval("´´´´´´´´´´´´´´´´´´´´´´´¶¶¶¶¶¶¶¶¶¶¶")
escreval(" ")
escreval("@TomazWillyan")

fimalgoritmo
