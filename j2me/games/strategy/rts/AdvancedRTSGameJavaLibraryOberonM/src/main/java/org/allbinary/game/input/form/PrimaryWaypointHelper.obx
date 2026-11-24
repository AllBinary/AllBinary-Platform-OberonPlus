{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.form
unit PrimaryWaypointHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingLayerInterface, WaypointLayer;

type
  {AB:TYPES}
  TPrimaryWaypointHelper = class(TObject)
  public
    waypointLayer: IPathFindingLayerInterface;
    class var instance: TPrimaryWaypointHelper;
    procedure InitFields;
        class function getInstance: TPrimaryWaypointHelper; static;
        constructor Create;
        function getWaypointLayer: IPathFindingLayerInterface; virtual;
        procedure setWaypointLayer(waypointLayer_: TWaypointLayer); virtual;
  end;

implementation
uses
  NullPathFindingLayer;


{AB:CODE}

procedure TPrimaryWaypointHelper.InitFields;
begin
  Self.waypointLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
end;
    

class function TPrimaryWaypointHelper.getInstance: TPrimaryWaypointHelper;
begin
        Exit(TPrimaryWaypointHelper.instance);
end;
    

constructor TPrimaryWaypointHelper.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPrimaryWaypointHelper.getWaypointLayer: IPathFindingLayerInterface;
begin
        Exit(Self.waypointLayer);
end;
    

procedure TPrimaryWaypointHelper.setWaypointLayer(waypointLayer_: TWaypointLayer);
begin
        Self.waypointLayer := waypointLayer_;
end;

initialization
  {AB:INITIALIZATION}
  TPrimaryWaypointHelper.instance := TPrimaryWaypointHelper.Create();
  {AB:END}

end.

