{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayer2SelectedLogHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, PathFindingLayerInterface, RTSLayer2LogHelper;

type
  {AB:TYPES}
  TRTSLayer2SelectedLogHelper = class(TRTSLayer2LogHelper)
  public
    logUtil: TLogUtil;
    TRACK_TO_FIRE_OR_MOVE: string;
    BUILDING_CHASE: string;
    class var instanceC: TRTSLayer2SelectedLogHelper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRTSLayer2SelectedLogHelper; static;
        procedure steeringUp(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
        procedure steeringFireOrStop(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
        procedure buildingAbove(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
        procedure buildingChaseLeft(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer); override;
        procedure buildingChaseRight(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer); override;
        procedure buildingDown(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
        procedure buildingChaseDown(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer); override;
        procedure buildingChaseUp(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer); override;
        procedure buildingLeft(pathFindingLayerInterface_: IPathFindingLayerInterface); virtual;
        procedure buildingRight(pathFindingLayerInterface_: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TRTSLayer2SelectedLogHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.TRACK_TO_FIRE_OR_MOVE := 'trackTo:fireOrMove';
  Self.BUILDING_CHASE := 'buildingChase';
end;

constructor TRTSLayer2SelectedLogHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRTSLayer2SelectedLogHelper.getInstance: TRTSLayer2SelectedLogHelper;
begin
        Exit(TRTSLayer2SelectedLogHelper.instanceC);
end;
    

procedure TRTSLayer2SelectedLogHelper.steeringUp(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Up').toString(), TJava.Box(Self), Self.TRACK_TO_FIRE_OR_MOVE);
end;
    

procedure TRTSLayer2SelectedLogHelper.steeringFireOrStop(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Fire/All Stop').toString(), TJava.Box(Self), Self.TRACK_TO_FIRE_OR_MOVE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingAbove(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' Building Above').toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingChaseLeft(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Going Left: ').appendint(angle).toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingChaseRight(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Going Right: ').appendint(angle).toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingDown(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' Building Below').toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingChaseDown(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Going Down: ').appendint(angle).toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingChaseUp(pathFindingLayerInterface_: IPathFindingLayerInterface; angle: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' steering - Going Up: ').appendint(angle).toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingLeft(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' Building Left').toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;
    

procedure TRTSLayer2SelectedLogHelper.buildingRight(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(' Building Right').toString(), TJava.Box(Self), Self.BUILDING_CHASE);
end;

initialization
  {AB:INITIALIZATION}
  TRTSLayer2SelectedLogHelper.instanceC := TRTSLayer2SelectedLogHelper.Create();
  {AB:END}

end.

