{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary
unit AndroidUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity;

type
  {AB:TYPES}
  TAndroidUtil = class(TObject)
  public
    class var NULL_ACTIVITY: TActivity;
    class var version: Integer;
    constructor Create;
        class function isMemoryRestrictive: Boolean; static;
        class function isAndroid: Boolean; static;
  end;

implementation
uses
  Build;


{AB:CODE}

constructor TAndroidUtil.Create;
begin
  inherited Create;
end;
    

class function TAndroidUtil.isMemoryRestrictive: Boolean;
begin
        if (TAndroidUtil.version) < (30) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

class function TAndroidUtil.isAndroid: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidUtil.NULL_ACTIVITY := TActivity.Create();
  TAndroidUtil.version := StrToInt(TBuild.VERSION.SDK);
  {AB:END}

end.

