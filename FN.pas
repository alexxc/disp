unit FN;

interface

function Between(V, VAL_MIN, VAL_MAX : variant) : boolean;
function NumToStr(s:string) : string;{���������� ����� ��������}
function RealToRouble(c:Extended; val_s:string):String;
function LongDateStr(ADate:TDate; Quoted : boolean = TRUE) : string;

const
  Months : array[1..12] of string = (
    '������', '�������','�����', '������', '���', '����',
    '����', '�������', '��������','�������', '������', '�������');

  Months_1 : array[1..12] of string = (
    '������', '�������', '����', '������', '���', '����',
    '����', '������', '��������', '�������', '������', '�������');

    implementation
uses Math, SysUtils;

const
  Max000      =  6; //���-�� ��������� - 000
  MaxPosition = Max000*3;{���-�� ������ � ����� }

function IIF(i:Boolean;s1,s2:Char   ):Char   ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:String ):String ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:integer ):integer ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:currency ):currency ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:variant ):variant ;overload;begin if i then result:=s1 else result:=s2 end;

function Between(V, VAL_MIN, VAL_MAX : variant) : boolean;
begin
  result := ((V >= VAL_MIN) and (V <=VAL_MAX));
end;


function NumToStr(s:string) : string;{���������� ����� ��������}
const
  c1000 : array[0..Max000] of string = (''   ,'�����','�������','��������','��������','�����������','�����������');
  c1000w: array[0..Max000] of Boolean= (False, True   ,False    ,False     ,False     ,False        ,False        );
//  c1000w: array[0..Max000] of Boolean= (False, True   ,TRUE    ,False     ,False     ,False        ,False        );
  wF :    array['0'..'9'] of string=('�� ',' ' , '� ', '� ', '� ', '�� ','�� ' ,'�� ' ,'�� ' ,'�� ');
  wT :    array['0'..'9'] of string=(' '  ,'� ', '� ', '� ', '� ', ' '  ,' '   ,' '   ,' ',   ' ');
  w :     array[False..True, 0..9] of string=
    (
      ('�� ',' ','� ','� ','� ','�� ','�� ','�� ','�� ','�� '),
      (' ' ,'� ','� ','� ','� ',' ',' ',' ',' ',' ')
    );

  function Num000toStr(S:String; woman:Boolean):string;{Num000toStr ���������� ����� ��� ��������}
    const
      c100: Array['0'..'9']of string=
        ('','��� '   ,'������ '  ,'������ '  ,'��������� ','������� ','�������� ','������� '  ,'��������� '  ,'��������� ');
      c10:  Array['0'..'9']of string=
        ('','������ ','�������� ','�������� ','����� ','��������� ','���������� ','��������� ','����������� ','��������� ');
      c11:  Array['0'..'9']of string=
        ('','����','���','���','�����','���','����','���','�����','�����');
      c1: Array[False..True,'0'..'9']of string=
        ( ('','���� ','��� ','��� ','������ ','���� ','����� ','���� ','������ ','������ '),
          ('','���� ','��� ','��� ','������ ','���� ','����� ','���� ','������ ','������ ')
        );
    begin
      Result:=c100[s[1]]+
              iif(
                (s[2]='1') and (s[3]>'0'),
                  c11[s[3]]+'������� ',
                  c10[s[2]]+c1[woman,s[3]]
                  );
    end;

var
  s000         : string;
  isw, isMinus : boolean;
  i            : integer;//������� ���������
Begin
  Result:=''; i:=0;
  isMinus:=(s<>'') and (s[1]='-');
  if isMinus then
    s:=Copy(s, 2, Length(s)-1);
  while not((i>=Ceil(Length(s)/3)) or (i>=Max000)) do begin
    s000:=copy('00'+s,Length(s)-i*3,3);
    isw:=c1000w[i];
    if (i>0) and (s000<>'000') then //������ � �.�.
      Result:=c1000[i]+ W[Isw, iif(s000[2]='1', 0, StrToInt(s000[3]))] + Result;
    Result:=Num000toStr(s000, isw)+Result;
    Inc(i)
  end;
  if Result='' then Result:='����';
  if isMinus   then Result:='����� '+Result;
end;

function RealToRouble(c:Extended; val_s:string):String;
Const
  ruble :array['0'..'9']of string=('��','�','�','�','�','��','��','��','��','��');
  Kopeek:array['0'..'9']of string=('��','���','���','���','���','��','��','��','��','��');
var
  rub:String;
  kop:String;
  function ending(const s:String) : Char;
  var
    l:Integer;//� l �� 8 ���� ������� $50->$48->$3F
  begin//���������� ������ ���������
    l:=Length(s);
    Result:=iif((l>1) and (s[l-1]='1'),'0',s[l]);
  end;

begin{���������� ����� �������� � ������� � ���������}
  Str(c:MaxPosition+3:2, Result);
  if Pos('E',Result)=0 then begin//���� ����� ����� ����������� � ������ <>1E+99
    rub:=TrimLeft(Copy(Result,1,Length(Result)-3));
    kop:=Copy(Result,Length(Result)-1,2) ;
    if val_s='RUR' then
      Result:=NumToStr(rub)+' ����'+ ruble[ending(rub)]+' '+    kop +' ����'+Kopeek[ending(kop)];
    if val_s='EUR' then
      Result:=NumToStr(rub)+' ����'+' '+    kop +' ��������';
    if val_s='USD' then
      Result:=NumToStr(rub)+' ������'+' '+    kop +' ����';
    Result:=AnsiUpperCase(Result[1])+Copy(Result,2,Length(Result)-1);
  end;
end;

function LongDateStr(ADate:TDate; Quoted : boolean = TRUE) : string;
var
  D,M,Y : word;
begin
  DecodeDate(ADate, Y, M, D);
  if Quoted then
    result := '�'+FormatDateTime('dd',ADate)+'� '+Months[M]+' '+FormatDateTime('yyyy',ADate)+'�.'
  else
    result := FormatDateTime('d',ADate)+' '+Months[M]+' '+FormatDateTime('yyyy',ADate)+'�.'
end;


end.
