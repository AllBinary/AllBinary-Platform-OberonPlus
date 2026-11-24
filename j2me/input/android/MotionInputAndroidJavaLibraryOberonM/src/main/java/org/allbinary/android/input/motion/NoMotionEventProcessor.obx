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
unit NoMotionEventProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEventProcessor;

type
  {AB:TYPES}
  TNoMotionEventProcessor = class(TMotionEventProcessor)
  public
    class var SINGLETON: TMotionEventProcessor;
    constructor Create;
        class function getInstance: TMotionEventProcessor; static;
  end;

implementation

{AB:CODE}

constructor TNoMotionEventProcessor.Create;
begin
  inherited Create;
end;
    

class function TNoMotionEventProcessor.getInstance: TMotionEventProcessor;
begin
        Exit(TNoMotionEventProcessor.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TNoMotionEventProcessor.SINGLETON := TMotionEventProcessor.Create();
  {AB:END}

end.

