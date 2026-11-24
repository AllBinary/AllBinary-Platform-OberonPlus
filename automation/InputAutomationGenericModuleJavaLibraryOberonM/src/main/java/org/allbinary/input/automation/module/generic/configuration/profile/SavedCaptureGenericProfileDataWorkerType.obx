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
// package org.allbinary.input.automation.module.generic.configuration.profile
unit SavedCaptureGenericProfileDataWorkerType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericProfileDataWorkerType;

type
  {AB:TYPES}
  TSavedCaptureGenericProfileDataWorkerType = class(TGenericProfileDataWorkerType)
  public
    path: string;
    lastFrame: Integer;
    class var SAVED_CAPTURE: TSavedCaptureGenericProfileDataWorkerType;
    procedure InitFields;
        constructor Create(name: string; path: string; lastFrame: Integer);
        function getPath: string; virtual;
        procedure setPath(path: string); virtual;
        function getLastFrame: Integer; virtual;
        procedure setLastFrame(lastFrame: Integer); virtual;
  end;

implementation
uses
  InputImageType;


{AB:CODE}

procedure TSavedCaptureGenericProfileDataWorkerType.InitFields;
begin
  
  
end;
    

constructor TSavedCaptureGenericProfileDataWorkerType.Create(name: string; path: string; lastFrame: Integer);
begin
        inherited Create(name);
        InitFields;
        Self.setPath(path);
        Self.setLastFrame(lastFrame);
end;
    

function TSavedCaptureGenericProfileDataWorkerType.getPath: string;
begin
        Exit(Self.path);
end;
    

procedure TSavedCaptureGenericProfileDataWorkerType.setPath(path: string);
begin
        Self.path := path;
end;
    

function TSavedCaptureGenericProfileDataWorkerType.getLastFrame: Integer;
begin
        Exit(Self.lastFrame);
end;
    

procedure TSavedCaptureGenericProfileDataWorkerType.setLastFrame(lastFrame: Integer);
begin
        Self.lastFrame := lastFrame;
end;

initialization
  {AB:INITIALIZATION}
  TSavedCaptureGenericProfileDataWorkerType.SAVED_CAPTURE := TSavedCaptureGenericProfileDataWorkerType.Create('Saved ' + TInputImageType.CAPTURE.getName(), 'c:\share\captures\2\', 100);
  {AB:END}

end.

