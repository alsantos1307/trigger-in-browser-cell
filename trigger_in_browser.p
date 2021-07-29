/*Adicionar na se‡Æo de Main Block no app builder, mesmo conceito da utiliza‡Æo da Lupa*/

/****************************  Main Block  *************************** */
DO iColumn = 1 TO br-teste:NUM-COLUMNS:                          //percorre todas as colunas do browser 
  hBrowCol = hBrowse:GET-BROWSE-COLUMN(iColumn).                 // guarda a coluna em uma handle
  IF hBrowCol:NAME = "it-codigo" THEN DO:                        //faz o teste se ‚ a coluna que você deseja adicionar uma trigger de leave
    ON LEAVE OF hBrowCol DO:                                     //aqui aciona a trigger da coluna
      MESSAGE "Nome da Coluna: " SELF:NAME SKIP 
              "Valor da Coluna: " SELF:SCREEN-VALUE VIEW-AS ALERT-BOX.
    END.
  END.
END.
