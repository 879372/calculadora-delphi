unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TU_calculadora = class(TForm)
    btn_ponto: TButton;
    btn_igual: TButton;
    bnt_0: TButton;
    btn_3: TButton;
    bntMult: TButton;
    btn_2: TButton;
    btn_1: TButton;
    btn_6: TButton;
    btn_5: TButton;
    btn_4: TButton;
    btn_9: TButton;
    btn_8: TButton;
    btn_7: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    bntMenos: TButton;
    btnMenos: TButton;
    bntMais: TButton;
    bntDiv: TButton;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_apagar: TButton;
    btn_limpar: TButton;
    resultado: TLabel;
    procedure bntMultClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure bntMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure bntDivClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure bnt_0Click(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  U_calculadora: TU_calculadora;

implementation

{$R *.fmx}

procedure TU_calculadora.bntDivClick(Sender: TObject);
begin

  if resultado.Text <> '' then
  begin
    lb_num1.Text := resultado.Text;
  end;

  lb_operador.Text := '/';
  bntMenos.Enabled := true;
  bntMais.Enabled := true;
  bntMult.Enabled := true;
  bntDiv.Enabled := false;
end;

procedure TU_calculadora.bntMaisClick(Sender: TObject);
begin

  if resultado.Text <> '' then
  begin
    lb_num1.Text := resultado.Text;
  end;

  lb_operador.Text := '+';
  bntMenos.Enabled := true;
  bntMais.Enabled := false;
  bntMult.Enabled := true;
  bntDiv.Enabled := true;

end;

procedure TU_calculadora.bntMultClick(Sender: TObject);
begin

  if resultado.Text <> '' then
  begin
    lb_num1.Text := resultado.Text;
  end;

  lb_operador.Text := 'x';
  bntMenos.Enabled := true;
  bntMais.Enabled := true;
  bntMult.Enabled := false;
  bntDiv.Enabled := true;
end;

procedure TU_calculadora.bnt_0Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '0';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '0';
  end;
end;

procedure TU_calculadora.btnMenosClick(Sender: TObject);
begin

  if resultado.Text <> '' then
  begin
    lb_num1.Text := resultado.Text;
  end;

  lb_operador.Text := '-';
  bntMenos.Enabled := false;
  bntMais.Enabled := true;
  bntMult.Enabled := true;
  bntDiv.Enabled := true;
end;

procedure TU_calculadora.btn_1Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '1';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '1';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;

  {if lb_num1.Text = '0' then
  begin
    lb_num1.Text := '';
  end;}

end;

procedure TU_calculadora.btn_2Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '2';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '2';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_3Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '3';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '3';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_4Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '4'
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '4'
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_5Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '5';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '5';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_6Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '6';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '6';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_7Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '7';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '7';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_8Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '8';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '8';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_9Click(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '9';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '9';
  end;

  if resultado.Text <> '' then
  begin
    resultado.Text := '';
  end;
end;

procedure TU_calculadora.btn_apagarClick(Sender: TObject);
begin
   if lb_operador.Text = '' then
  begin
    lb_num1.Text := copy(lb_num1.Text, 0, length(lb_num1.Text)-1);
  end
  Else
  begin
    lb_num2.Text := copy(lb_num2.Text, 0, length(lb_num2.Text)-1);
  end;

  if lb_num2.Text = '' then
  begin
    lb_operador.Text := '';
    bntMenos.Enabled := true;
    bntMais.Enabled := true;
    bntMult.Enabled := true;
    bntDiv.Enabled := true;
  end;

end;

procedure TU_calculadora.btn_igualClick(Sender: TObject);
  var num1, num2: double;
  var operador:char;
begin
  num1 := strToFloat(lb_num1.Text);
  num2 := strToFloat(lb_num2.Text);

  operador := lb_operador.Text[1];
  case operador of
    'x':
    begin
      resultado.Text := (FloatToStr(num1 * num2));
    end;
    '+':
    begin
      resultado.Text := (FloatToStr(num1 + num2));
    end;
    '-':
    begin
      resultado.Text := (FloatToStr(num1 - num2));
    end;
    '/':
    begin
      resultado.Text := (FloatToStr(num1 / num2));
    end;
  end;
    lb_operador.Text := '';
    lb_num1.Text := '0';
    lb_num2.Text := '';


  bntMenos.Enabled := true;
  bntMais.Enabled := true;
  bntMult.Enabled := true;
  bntDiv.Enabled := true;


end;

procedure TU_calculadora.btn_limparClick(Sender: TObject);
begin
  bntMenos.Enabled := true;
  bntMais.Enabled := true;
  bntMult.Enabled := true;
  bntDiv.Enabled := true;

    lb_operador.Text := '';
    lb_num1.Text := '0';
    lb_num2.Text := '';
    resultado.Text := '';
end;

procedure TU_calculadora.btn_pontoClick(Sender: TObject);
begin
  if lb_operador.Text = '' then
  begin
    lb_num1.Text := lb_num1.Text + '.';
  end
  Else
  begin
    lb_num2.Text := lb_num2.Text + '.';
  end;
end;

end.
