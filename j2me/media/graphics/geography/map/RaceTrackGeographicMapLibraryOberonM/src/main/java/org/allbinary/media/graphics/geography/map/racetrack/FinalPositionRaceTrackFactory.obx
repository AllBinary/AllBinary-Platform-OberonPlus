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
// package org.allbinary.media.graphics.geography.map.racetrack
unit FinalPositionRaceTrackFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFinalPositionRaceTrackFactory = class(TObject)
  public
    class var FIRST_POSITION: Integer;
    class var index: Integer;
        constructor Create;
        class function getInstance: Integer; static;
        class procedure reset; static;
  end;

implementation

{AB:CODE}
    

constructor TFinalPositionRaceTrackFactory.Create;
begin
    inherited Create;
end;
    

class function TFinalPositionRaceTrackFactory.getInstance: Integer;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TJava.PostInc(TFinalPositionRaceTrackFactory.index));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class procedure TFinalPositionRaceTrackFactory.reset;
begin
    TJava.MonitorEnter(nil);
    try
        TFinalPositionRaceTrackFactory.index := TFinalPositionRaceTrackFactory.FIRST_POSITION;
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TFinalPositionRaceTrackFactory.FIRST_POSITION := 1;
  TFinalPositionRaceTrackFactory.index := TFinalPositionRaceTrackFactory.FIRST_POSITION;
  {AB:END}

end.

