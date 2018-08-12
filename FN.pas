unit FN;

interface

function Between(V, VAL_MIN, VAL_MAX : variant) : boolean;
function NumToStr(s:string) : string;{Возвращает число прописью}
function RealToRouble(c:Extended; val_s:string):String;
function LongDateStr(ADate:TDate; Quoted : boolean = TRUE) : string;

const
  Months : array[1..12] of string = (
    'января', 'февраля','марта', 'апреля', 'мая', 'июня',
    'июля', 'августа', 'сентября','октября', 'ноября', 'декабря');

  Months_1 : array[1..12] of string = (
    'Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
    'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь');

    implementation
uses Math, SysUtils;

const
  Max000      =  6; //Кол-во триплетов - 000
  MaxPosition = Max000*3;{Кол-во знаков в числе }

function IIF(i:Boolean;s1,s2:Char   ):Char   ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:String ):String ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:integer ):integer ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:currency ):currency ;overload;begin if i then result:=s1 else result:=s2 end;
function IIF(i:Boolean;s1,s2:variant ):variant ;overload;begin if i then result:=s1 else result:=s2 end;

function Between(V, VAL_MIN, VAL_MAX : variant) : boolean;
begin
  result := ((V >= VAL_MIN) and (V <=VAL_MAX));
end;


function NumToStr(s:string) : string;{Возвращает число прописью}
const
  c1000 : array[0..Max000] of string = (''   ,'тысяч','миллион','миллиард','триллион','квадраллион','квинтиллион');
  c1000w: array[0..Max000] of Boolean= (False, True   ,False    ,False     ,False     ,False        ,False        );
//  c1000w: array[0..Max000] of Boolean= (False, True   ,TRUE    ,False     ,False     ,False        ,False        );
  wF :    array['0'..'9'] of string=('ов ',' ' , 'а ', 'а ', 'а ', 'ов ','ов ' ,'ов ' ,'ов ' ,'ов ');
  wT :    array['0'..'9'] of string=(' '  ,'а ', 'и ', 'и ', 'и ', ' '  ,' '   ,' '   ,' ',   ' ');
  w :     array[False..True, 0..9] of string=
    (
      ('ов ',' ','а ','а ','а ','ов ','ов ','ов ','ов ','ов '),
      (' ' ,'а ','и ','и ','и ',' ',' ',' ',' ',' ')
    );

  function Num000toStr(S:String; woman:Boolean):string;{Num000toStr возвращает число для триплета}
    const
      c100: Array['0'..'9']of string=
        ('','сто '   ,'двести '  ,'триста '  ,'четыреста ','пятьсот ','шестьсот ','семьсот '  ,'восемьсот '  ,'девятьсот ');
      c10:  Array['0'..'9']of string=
        ('','десять ','двадцать ','тридцать ','сорок ','пятьдесят ','шестьдесят ','семьдесят ','восемьдесят ','девяносто ');
      c11:  Array['0'..'9']of string=
        ('','один','две','три','четыр','пят','шест','сем','восем','девят');
      c1: Array[False..True,'0'..'9']of string=
        ( ('','один ','два ','три ','четыре ','пять ','шесть ','семь ','восемь ','девять '),
          ('','одна ','две ','три ','четыре ','пять ','шесть ','семь ','восемь ','девять ')
        );
    begin
      Result:=c100[s[1]]+
              iif(
                (s[2]='1') and (s[3]>'0'),
                  c11[s[3]]+'надцать ',
                  c10[s[2]]+c1[woman,s[3]]
                  );
    end;

var
  s000         : string;
  isw, isMinus : boolean;
  i            : integer;//Счётчик триплетов
Begin
  Result:=''; i:=0;
  isMinus:=(s<>'') and (s[1]='-');
  if isMinus then
    s:=Copy(s, 2, Length(s)-1);
  while not((i>=Ceil(Length(s)/3)) or (i>=Max000)) do begin
    s000:=copy('00'+s,Length(s)-i*3,3);
    isw:=c1000w[i];
    if (i>0) and (s000<>'000') then //тысячи и т.д.
      Result:=c1000[i]+ W[Isw, iif(s000[2]='1', 0, StrToInt(s000[3]))] + Result;
    Result:=Num000toStr(s000, isw)+Result;
    Inc(i)
  end;
  if Result='' then Result:='ноль';
  if isMinus   then Result:='минус '+Result;
end;

function RealToRouble(c:Extended; val_s:string):String;
Const
  ruble :array['0'..'9']of string=('ей','ь','я','я','я','ей','ей','ей','ей','ей');
  Kopeek:array['0'..'9']of string=('ек','йка','йки','йки','йки','ек','ек','ек','ек','ек');
var
  rub:String;
  kop:String;
  function ending(const s:String) : Char;
  var
    l:Integer;//С l на 8 байт коротче $50->$48->$3F
  begin//Возвращает индекс окончания
    l:=Length(s);
    Result:=iif((l>1) and (s[l-1]='1'),'0',s[l]);
  end;

begin{Возвращает число прописью с рублями и копейками}
  Str(c:MaxPosition+3:2, Result);
  if Pos('E',Result)=0 then begin//Если число можно представить в строке <>1E+99
    rub:=TrimLeft(Copy(Result,1,Length(Result)-3));
    kop:=Copy(Result,Length(Result)-1,2) ;
    if val_s='RUR' then
      Result:=NumToStr(rub)+' рубл'+ ruble[ending(rub)]+' '+    kop +' копе'+Kopeek[ending(kop)];
    if val_s='EUR' then
      Result:=NumToStr(rub)+' евро'+' '+    kop +' евроцент';
    if val_s='USD' then
      Result:=NumToStr(rub)+' доллар'+' '+    kop +' цент';
    Result:=AnsiUpperCase(Result[1])+Copy(Result,2,Length(Result)-1);
  end;
end;

function LongDateStr(ADate:TDate; Quoted : boolean = TRUE) : string;
var
  D,M,Y : word;
begin
  DecodeDate(ADate, Y, M, D);
  if Quoted then
    result := '«'+FormatDateTime('dd',ADate)+'» '+Months[M]+' '+FormatDateTime('yyyy',ADate)+'г.'
  else
    result := FormatDateTime('d',ADate)+' '+Months[M]+' '+FormatDateTime('yyyy',ADate)+'г.'
end;


end.
