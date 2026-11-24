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
unit GameInputMotionEventProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseGameInputMotionEventProcessor;

type
  {AB:TYPES}
  TGameInputMotionEventProcessorFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TBaseGameInputMotionEventProcessor; static;
  end;

implementation
uses
  AndroidInfoFactory, GameInputMotionEventProcessorAPI1, GameInputMotionEventProcessorAPI5;


{AB:CODE}

constructor TGameInputMotionEventProcessorFactory.Create;
begin
  inherited Create;
end;
    

class function TGameInputMotionEventProcessorFactory.getInstance: TBaseGameInputMotionEventProcessor;
var
  SDK_VERSION: Integer;
begin
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) <= (4) then begin
            Exit(TGameInputMotionEventProcessorAPI1.getInstance());
        end else begin
            Exit(TGameInputMotionEventProcessorAPI5.getInstance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

