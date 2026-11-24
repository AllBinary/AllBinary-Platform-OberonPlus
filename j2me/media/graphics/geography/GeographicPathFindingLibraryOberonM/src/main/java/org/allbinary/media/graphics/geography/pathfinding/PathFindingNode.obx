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
unit PathFindingNode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition;

type
  {AB:TYPES}
  TPathFindingNode = class(TObject)
  public
    parent: TObject;
    geographicMapCellPosition: TGeographicMapCellPosition;
    procedure InitFields;
        constructor Create(parent: TObject; geographicMapCellPosition_: TGeographicMapCellPosition);
        function getParentP: TPathFindingNode; virtual;
        procedure setGeographicMapCellPositionP(geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  NullUtil, CommonSeps, StringMaker, SimpleGeographicMapCellPositionFactory, CommonLabels;


{AB:CODE}

procedure TPathFindingNode.InitFields;
begin
  Self.parent := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  Self.geographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
end;
    

constructor TPathFindingNode.Create(parent: TObject; geographicMapCellPosition_: TGeographicMapCellPosition);
begin
    inherited Create;
    InitFields;
        Self.parent := TJava.Box(parent);
        Self.setGeographicMapCellPositionP(geographicMapCellPosition_);
        if (Self.geographicMapCellPosition) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            raise SysUtils.Exception.Create('No GeographicMapCellPosition');
        end;
end;
    

function TPathFindingNode.getParentP: TPathFindingNode;
begin
        Exit(TPathFindingNode(TJava.ToObject(Self.parent)));
end;
    

procedure TPathFindingNode.setGeographicMapCellPositionP(geographicMapCellPosition_: TGeographicMapCellPosition);
begin
        Self.geographicMapCellPosition := geographicMapCellPosition_;
end;
    

function TPathFindingNode.toString: string;
var
  stringBuffer: TStringMaker;
  pathFindingNode_: TPathFindingNode;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(TCommonLabels.getInstance().COLON_SEP);
        stringBuffer.append(' Path: ');
        stringBuffer.append(Self.geographicMapCellPosition.toString());
        pathFindingNode_ := Self.getParentP();
        while (pathFindingNode_) <> (nil) do begin
            stringBuffer.append(pathFindingNode_.geographicMapCellPosition.toString());
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            pathFindingNode_ := pathFindingNode_.getParentP();
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

