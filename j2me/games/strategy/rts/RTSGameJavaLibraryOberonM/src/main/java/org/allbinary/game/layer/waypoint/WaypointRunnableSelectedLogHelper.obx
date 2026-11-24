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
// package org.allbinary.game.layer.waypoint
unit WaypointRunnableSelectedLogHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingLayerInterface, LogUtil, CommonStrings, WaypointRunnableLogHelper;

type
  {AB:TYPES}
  TWaypointRunnableSelectedLogHelper = class(TWaypointRunnableLogHelper)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instanceC: TWaypointRunnableSelectedLogHelper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWaypointRunnableSelectedLogHelper; static;
        procedure start(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
        procedure end_(pathFindingLayerInterface_: IPathFindingLayerInterface); override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TWaypointRunnableSelectedLogHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TWaypointRunnableSelectedLogHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWaypointRunnableSelectedLogHelper.getInstance: TWaypointRunnableSelectedLogHelper;
begin
        Exit(TWaypointRunnableSelectedLogHelper.instanceC);
end;
    

procedure TWaypointRunnableSelectedLogHelper.start(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(Self.commonStrings.START_RUNNABLE).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;
    

procedure TWaypointRunnableSelectedLogHelper.end_(pathFindingLayerInterface_: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(pathFindingLayerInterface_.getName()).append(Self.commonStrings.END_RUNNABLE).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;

initialization
  {AB:INITIALIZATION}
  TWaypointRunnableSelectedLogHelper.instanceC := TWaypointRunnableSelectedLogHelper.Create();
  {AB:END}

end.

