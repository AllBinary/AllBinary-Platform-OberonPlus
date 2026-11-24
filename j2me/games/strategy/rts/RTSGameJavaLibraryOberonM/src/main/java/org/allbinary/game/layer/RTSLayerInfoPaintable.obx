{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayerInfoPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, InitUpdatePaintable, SelectionHudPaintable;

type
  {AB:TYPES}
  TRTSLayerInfoPaintable = class(TInitUpdatePaintable)
  public
    initUpdatePaintable: TInitUpdatePaintable;
    procedure InitFields;
        constructor Create;
        procedure update; override;
        procedure paint(graphics_: TGraphics); override;
        procedure updateRTSLayerInfoInit(hudPaintable: TInitUpdatePaintable); virtual;
        procedure updateRTSLayerInfoSelection(hudPaintable: TSelectionHudPaintable); virtual;
  end;

implementation
uses
  NullInitUpdatePaintable;


{AB:CODE}

procedure TRTSLayerInfoPaintable.InitFields;
begin
  Self.initUpdatePaintable := TNullInitUpdatePaintable.getInstance();
end;
    

constructor TRTSLayerInfoPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TRTSLayerInfoPaintable.update;
begin
        Self.initUpdatePaintable.update();
end;
    

procedure TRTSLayerInfoPaintable.paint(graphics_: TGraphics);
begin
        Self.initUpdatePaintable.paint(graphics_);
end;
    

procedure TRTSLayerInfoPaintable.updateRTSLayerInfoInit(hudPaintable: TInitUpdatePaintable);
begin
        Self.initUpdatePaintable := hudPaintable;
end;
    

procedure TRTSLayerInfoPaintable.updateRTSLayerInfoSelection(hudPaintable: TSelectionHudPaintable);
begin
        hudPaintable.updateSelectionInfo();
        Self.initUpdatePaintable := hudPaintable;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

