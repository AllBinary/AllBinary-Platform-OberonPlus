{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayerEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, PathFindingLayerInterface;

type
  {AB:TYPES}
  TRTSLayerEvent = class(TAllBinaryEventObject)
  public
    rtsLayer: IPathFindingLayerInterface;
    procedure InitFields;
        constructor Create(rtsLayer: IPathFindingLayerInterface);
        function toString: string; override;
        function getRtsLayer: IPathFindingLayerInterface; virtual;
        procedure setRtsLayer(rtsLayer: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  NullPathFindingLayer, StringMaker;


{AB:CODE}

procedure TRTSLayerEvent.InitFields;
begin
  Self.rtsLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
end;
    

constructor TRTSLayerEvent.Create(rtsLayer: IPathFindingLayerInterface);
begin
        inherited Create(rtsLayer);
        InitFields;
end;
    

function TRTSLayerEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('RTSLayerEvent: '#10'');
        stringBuffer.append('RTSLayer: ');
        stringBuffer.append(Self.getRtsLayer().toString());
        Exit(stringBuffer.toString());
end;
    

function TRTSLayerEvent.getRtsLayer: IPathFindingLayerInterface;
begin
        Exit(Self.rtsLayer);
end;
    

procedure TRTSLayerEvent.setRtsLayer(rtsLayer: IPathFindingLayerInterface);
begin
        Self.rtsLayer := rtsLayer;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

