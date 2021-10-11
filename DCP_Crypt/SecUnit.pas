unit SecUnit;

interface

uses DCPcrypt, Rijndael, base64, Math;

 function DecodeString(key,s:string):string;
 function encodestring(key,s:string):string;
 function RandomKey:string;

implementation

var
 crypt_rijndael: TDCP_Rijndael;

function decodestring(key,s:string):string;
var
 i: integer;
begin
        crypt_rijndael.InitStr(key);

        // replace all "!" signs back to "=" (reason: inverting as in encoding)

        for i:=1 to length(s) do
         begin
                if s[i]='!' then s[i]:='=';
         end;

        s:=B64Decode(s);

        crypt_rijndael.DecryptCFB(s[1],s[1],length(s));

        crypt_rijndael.Reset();
        crypt_rijndael.Burn();

        result:=s;
end;

function encodestring(key,s:string):string;
var
 i: integer;
begin
        crypt_rijndael.InitStr(key);

        crypt_rijndael.EncryptCFB(s[1],s[1],length(s));

        s:=B64Encode(s);

        // replace all "=" signs with "!"
        // (otherwise multiple "=" signs in one lign, which is not possible for ini-files
        //  and causes that the TINIFILE class is no longer working correct)
        for i:=1 to length(s) do
         begin
                if s[i]='=' then s[i]:='!';
         end;

        crypt_rijndael.Reset();
        crypt_rijndael.Burn();

        result:=s;
end;


function RandomKey:string;
const
 bk = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890/+';
var
 i: integer;
begin
 Result:='';
 Randomize;
 for i:=1 to RandomRange(150,350) do
  Result:= Result+bk[RandomRange(1,65)];
 Result:=Result+'!';
end;

initialization
 crypt_rijndael:=TDCP_Rijndael.Create(nil);

end.