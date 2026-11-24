// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidAPI1KeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AndroidKeyFactory;

type
  {AB:TYPES}
  TAndroidAPI1KeyFactory = class(TAndroidKeyFactory)
  public
    class var instance: TObject;
        class function getInstance: TAndroidAPI1KeyFactory; static;
        constructor Create;
  end;

implementation
uses
  NullUtil;


{AB:CODE}
    

class function TAndroidAPI1KeyFactory.getInstance: TAndroidAPI1KeyFactory;
begin
        if (TAndroidAPI1KeyFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAndroidAPI1KeyFactory.instance := TAndroidAPI1KeyFactory.Create();
        end;
        Exit(TAndroidAPI1KeyFactory(TJava.ToObject(TAndroidAPI1KeyFactory.instance)));
end;
    

constructor TAndroidAPI1KeyFactory.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TAndroidAPI1KeyFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

