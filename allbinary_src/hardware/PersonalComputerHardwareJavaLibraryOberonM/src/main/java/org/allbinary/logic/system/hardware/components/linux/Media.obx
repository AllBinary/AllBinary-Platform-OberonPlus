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
// package org.allbinary.logic.system.hardware.components.linux
unit Media;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HardwareComponentInterface, MediaInterface;

type
  {AB:TYPES}
  TMedia = class(TInterfacedObject, IHardwareComponentInterface, IMediaInterface)
  public
    data: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(data: string);
        function compareTo(componentInterface: IHardwareComponentInterface): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TMedia.InitFields;
begin
  
end;

function TMedia.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMedia.Create(data: string);
begin
    inherited Create;
    InitFields;
        Self.data := data;
end;
    

function TMedia.compareTo(componentInterface: IHardwareComponentInterface): Boolean;
begin
        Exit(True);
end;
    

function TMedia.toString: string;
begin
        Exit(Self.data);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

