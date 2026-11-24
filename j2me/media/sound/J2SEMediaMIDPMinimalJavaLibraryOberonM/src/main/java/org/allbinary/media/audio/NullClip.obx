{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit NullClip;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullJ2SEControl;

type
  {AB:TYPES}
  TNullClip = class(TInterfacedObject, IClip)
  public
    class var NULL_CONTROL: TNullJ2SEControl;
    function JavaObject: TObject;
    constructor Create;
        procedure open(format: TAudioFormat; data: TArray<ShortInt>; offset: Integer; bufferSize: Integer); overload; virtual;
        procedure open(stream: TAudioInputStream); overload; virtual;
        function getFrameLength: Integer; virtual;
        function getMicrosecondLength: Int64; virtual;
        procedure setFramePosition(frames: Integer); virtual;
        procedure setMicrosecondPosition(microseconds: Int64); virtual;
        procedure setLoopPoints(start: Integer; end_: Integer); virtual;
        procedure loop(count: Integer); virtual;
        procedure drain; virtual;
        procedure flush; virtual;
        procedure start; virtual;
        procedure stop; virtual;
        function isRunning: Boolean; virtual;
        function isActive: Boolean; virtual;
        function getFormat: TAudioFormat; virtual;
        function getBufferSize: Integer; virtual;
        function available: Integer; virtual;
        function getFramePosition: Integer; virtual;
        function getLongFramePosition: Int64; virtual;
        function getMicrosecondPosition: Int64; virtual;
        function getLevel: Single; virtual;
        function getLineInfo: TInfo; virtual;
        procedure open; overload; virtual;
        procedure close; virtual;
        function isOpen: Boolean; virtual;
        function getControls: TArray<TControl>; virtual;
        function isControlSupported(control_: TType): Boolean; virtual;
        function getControl(control_: TType): TControl; virtual;
        procedure addLineListener(listener: TLineListener); virtual;
        procedure removeLineListener(listener: TLineListener); virtual;
  end;

implementation
uses
  NullAudioFormat;


{AB:CODE}

function TNullClip.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullClip.Create;
begin
  inherited Create;
end;
    

// throws LineUnavailableException
procedure TNullClip.open(format: TAudioFormat; data: TArray<ShortInt>; offset: Integer; bufferSize: Integer);
begin
end;
    

// throws LineUnavailableException, IOException
procedure TNullClip.open(stream: TAudioInputStream);
begin
end;
    

function TNullClip.getFrameLength: Integer;
begin
        Exit(0);
end;
    

function TNullClip.getMicrosecondLength: Int64;
begin
        Exit(0);
end;
    

procedure TNullClip.setFramePosition(frames: Integer);
begin
end;
    

procedure TNullClip.setMicrosecondPosition(microseconds: Int64);
begin
end;
    

procedure TNullClip.setLoopPoints(start: Integer; end_: Integer);
begin
end;
    

procedure TNullClip.loop(count: Integer);
begin
end;
    

procedure TNullClip.drain;
begin
end;
    

procedure TNullClip.flush;
begin
end;
    

procedure TNullClip.start;
begin
end;
    

procedure TNullClip.stop;
begin
end;
    

function TNullClip.isRunning: Boolean;
begin
        Exit(False);
end;
    

function TNullClip.isActive: Boolean;
begin
        Exit(False);
end;
    

function TNullClip.getFormat: TAudioFormat;
begin
        Exit(TNullAudioFormat.NULL_AUDIO_FORMAT);
end;
    

function TNullClip.getBufferSize: Integer;
begin
        Exit(0);
end;
    

function TNullClip.available: Integer;
begin
        Exit(0);
end;
    

function TNullClip.getFramePosition: Integer;
begin
        Exit(0);
end;
    

function TNullClip.getLongFramePosition: Int64;
begin
        Exit(0);
end;
    

function TNullClip.getMicrosecondPosition: Int64;
begin
        Exit(0);
end;
    

function TNullClip.getLevel: Single;
begin
        Exit(0.0);
end;
    

function TNullClip.getLineInfo: TInfo;
begin
        Exit(TInfo.Create(Self.ClassType, TNullAudioFormat.NULL_AUDIO_FORMAT));
end;
    

// throws LineUnavailableException
procedure TNullClip.open;
begin
end;
    

procedure TNullClip.close;
begin
end;
    

function TNullClip.isOpen: Boolean;
begin
        Exit(False);
end;
    

function TNullClip.getControls: TArray<TControl>;
begin
        Exit(nil);
end;
    

function TNullClip.isControlSupported(control_: TType): Boolean;
begin
        Exit(False);
end;
    

function TNullClip.getControl(control_: TType): TControl;
begin
        Exit(TNullClip.NULL_CONTROL);
end;
    

procedure TNullClip.addLineListener(listener: TLineListener);
begin
end;
    

procedure TNullClip.removeLineListener(listener: TLineListener);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullClip.NULL_CONTROL := TNullJ2SEControl.Create(TBooleanControl.Type_.MUTE);
  {AB:END}

end.

