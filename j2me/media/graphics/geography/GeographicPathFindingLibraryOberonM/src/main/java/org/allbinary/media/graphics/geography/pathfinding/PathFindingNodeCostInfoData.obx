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
// package org.allbinary.media.graphics.geography.pathfinding
unit PathFindingNodeCostInfoData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPathFindingNodeCostInfoData = class(TObject)
  public
    MAX_TOTAL_COST: Integer;
    MAX_NODE_COST: Integer;
    class var instance: TPathFindingNodeCostInfoData;
    procedure InitFields;
        class function getInstance: TPathFindingNodeCostInfoData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TPathFindingNodeCostInfoData.InitFields;
begin
  Self.MAX_TOTAL_COST := High(Integer);
  Self.MAX_NODE_COST := (High(Integer)) div (10000);
end;
    

class function TPathFindingNodeCostInfoData.getInstance: TPathFindingNodeCostInfoData;
begin
        Exit(TPathFindingNodeCostInfoData.instance);
end;
    

constructor TPathFindingNodeCostInfoData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TPathFindingNodeCostInfoData.instance := TPathFindingNodeCostInfoData.Create();
  {AB:END}

end.

