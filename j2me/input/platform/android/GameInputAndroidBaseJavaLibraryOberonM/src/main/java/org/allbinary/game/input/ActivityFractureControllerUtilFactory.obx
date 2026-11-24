// Generated Code Do Not Modify
// package org.allbinary.game.input
unit ActivityFractureControllerUtilFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AndroidKeyFactory;

type
  {AB:TYPES}
  TActivityFractureControllerUtilFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TAndroidKeyFactory; static;
  end;

implementation
uses
  AndroidAPI12KeyFactory, AndroidAPI9KeyFactory, AndroidAPI1KeyFactory, AndroidInfoFactory;


{AB:CODE}

constructor TActivityFractureControllerUtilFactory.Create;
begin
  inherited Create;
end;
    

class function TActivityFractureControllerUtilFactory.getInstance: TAndroidKeyFactory;
var
  SDK_VERSION: Integer;
begin
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) <= (8) then begin
            Exit(TAndroidAPI1KeyFactory.getInstance());
        end else if (SDK_VERSION) <= (11) then begin
            Exit(TAndroidAPI9KeyFactory.getInstance());
        end else begin
            Exit(TAndroidAPI12KeyFactory.getAPI12Instance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

