unit uJardim;

interface
  uses
    FMX.ListBox ,

    FMX.Edit ,

    System.SysUtils,

    FMX.DialogService;

type
  TJardim = class

  private
    FChave_Jardim                                        : integer;

    FDescricao                                           : String;
    FForma_Aquisicao                                     : String;
    FEstilo_Desejado                                     : String;

    destructor   destroy;                                  Override;

  public
    property     chave_Jardim                            : Integer  read  FChave_Jardim
                                                                    write FChave_Jardim;

    property     descricao                               : String   read  FDescricao
                                                                    write FDescricao;

    property     forma_aquisicao                         : String   read  FForma_Aquisicao
                                                                    write FForma_Aquisicao;

    property     estilo_desejado                         : String   read  FEstilo_Desejado
                                                                    write FEstilo_Desejado;


    constructor  create(  eJardim_forma_aquisicao        : TComboBox;
                          eJardim_estilo_desejado        : TComboBox;
                          eJardim_Descricao              : TEdit ); Overload;

    constructor  create(  eJardim_chave                  : Integer;
                          eJardim_forma_aquisicao        : String;
                          eJardim_estilo_desejado        : String;
                          eJardim_Descricao              : String ); Overload;


  end;

implementation


constructor TJardim.create( eJardim_forma_aquisicao      : TComboBox;
                            eJardim_estilo_desejado      : TComboBox;
                            eJardim_Descricao            : TEdit );
begin

   forma_aquisicao  := eJardim_forma_aquisicao.Items[eJardim_forma_aquisicao.ItemIndex];
   estilo_desejado  := eJardim_estilo_desejado.Items[eJardim_estilo_desejado.ItemIndex];
   descricao        := eJardim_Descricao.text;

end;

constructor TJardim.create( eJardim_chave                    : Integer;
                            eJardim_forma_aquisicao          : String;
                            eJardim_estilo_desejado          : String;
                            eJardim_Descricao                : String);
begin

   chave_Jardim                                              := eJardim_chave;
   forma_aquisicao                                           := eJardim_forma_aquisicao;
   estilo_desejado                                           := eJardim_estilo_desejado;
   descricao                                                 := eJardim_Descricao;

end;

destructor TJardim.Destroy;
begin

  inherited;

end;

end.
