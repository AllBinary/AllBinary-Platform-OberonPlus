{

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
unit GameInputMotionInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputMotionInfo;

type
  {AB:TYPES}
  TGameInputMotionInfoFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TGameInputMotionInfo; static;
  end;

implementation
uses
  AndroidInfoFactory, GameInputMotionInfoAPI1, GameInputMotionInfoAPI5;


{AB:CODE}

constructor TGameInputMotionInfoFactory.Create;
begin
  inherited Create;
end;
    

class function TGameInputMotionInfoFactory.getInstance: TGameInputMotionInfo;
var
  SDK_VERSION: Integer;
begin
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) <= (4) then begin
            Exit(TGameInputMotionInfoAPI1.getInstance());
        end else begin
            Exit(TGameInputMotionInfoAPI5.getInstance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

