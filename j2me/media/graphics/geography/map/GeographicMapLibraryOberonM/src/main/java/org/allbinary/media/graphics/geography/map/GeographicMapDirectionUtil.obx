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
// package org.allbinary.media.graphics.geography.map
unit GeographicMapDirectionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, GeographicMapCellPosition;

type
  {AB:TYPES}
  TGeographicMapDirectionUtil = class(TObject)
  public
    MESSAGE: string;
    ERROR: string;
    EQUAL: string;
    class var instance: TGeographicMapDirectionUtil;
    procedure InitFields;
        class function getInstance: TGeographicMapDirectionUtil; static;
        constructor Create;
        function getDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection; virtual;
        function getEightDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection; virtual;
        function getDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection; virtual;
        function getEightDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection; virtual;
  end;

implementation
uses
  StringMaker, DirectionFactory, CellPosition;


{AB:CODE}

procedure TGeographicMapDirectionUtil.InitFields;
begin
  Self.MESSAGE := 'Cell Position should have been cached!!!';
  Self.ERROR := 'Error: ';
  Self.EQUAL := ' == ';
end;
    

class function TGeographicMapDirectionUtil.getInstance: TGeographicMapDirectionUtil;
begin
        Exit(TGeographicMapDirectionUtil.instance);
end;
    

constructor TGeographicMapDirectionUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TGeographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection;
var
  fromColumn: Integer;
  fromRow: Integer;
  goColumn: Integer;
  goRow: Integer;
  directionFactory_: TDirectionFactory;
begin
        fromColumn := fromGeographicMapCellPosition.getColumn();
        fromRow := fromGeographicMapCellPosition.getRow();
        goColumn := toGeographicMapCellPosition.getColumn();
        goRow := toGeographicMapCellPosition.getRow();
        directionFactory_ := TDirectionFactory.getInstance();
        if ((fromColumn) - (1)) = (goColumn) then begin
            Exit(directionFactory_.LEFT);
        end else if ((fromColumn) + (1)) = (goColumn) then begin
            Exit(directionFactory_.RIGHT);
        end else if ((fromRow) - (1)) = (goRow) then begin
            Exit(directionFactory_.UP);
        end else if ((fromRow) + (1)) = (goRow) then begin
            Exit(directionFactory_.DOWN);
        end else if (fromGeographicMapCellPosition) = (toGeographicMapCellPosition) then begin
            Exit(directionFactory_.NO_DIRECTION);
        end else if ((fromRow) = (goRow)) and ((fromColumn) = (goColumn)) then begin
            raise SysUtils.Exception.Create(Self.MESSAGE);
        end;
        Exit(directionFactory_.NOT_BORDERED_WITH);
end;
    

// throws Exception
function TGeographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection;
var
  fromColumn: Integer;
  fromRow: Integer;
  goColumn: Integer;
  goRow: Integer;
  directionFactory_: TDirectionFactory;
begin
        fromColumn := fromGeographicMapCellPosition.getColumn();
        fromRow := fromGeographicMapCellPosition.getRow();
        goColumn := toGeographicMapCellPosition.getColumn();
        goRow := toGeographicMapCellPosition.getRow();
        directionFactory_ := TDirectionFactory.getInstance();
        if (fromRow) = (goRow) then begin
            if ((fromColumn) - (1)) = (goColumn) then begin
                Exit(directionFactory_.LEFT);
            end else if ((fromColumn) + (1)) = (goColumn) then begin
                Exit(directionFactory_.RIGHT);
            end;
        end else if ((fromRow) - (1)) = (goRow) then begin
            if (fromColumn) = (goColumn) then begin
                Exit(directionFactory_.UP);
            end;
            if ((fromColumn) - (1)) = (goColumn) then begin
                Exit(directionFactory_.UP_LEFT);
            end else if ((fromColumn) + (1)) = (goColumn) then begin
                Exit(directionFactory_.UP_RIGHT);
            end;
        end else if ((fromRow) + (1)) = (goRow) then begin
            if (fromColumn) = (goColumn) then begin
                Exit(directionFactory_.DOWN);
            end;
            if ((fromColumn) - (1)) = (goColumn) then begin
                Exit(directionFactory_.DOWN_LEFT);
            end else if ((fromColumn) + (1)) = (goColumn) then begin
                Exit(directionFactory_.DOWN_RIGHT);
            end;
        end else if (fromGeographicMapCellPosition) = (toGeographicMapCellPosition) then begin
            Exit(directionFactory_.NO_DIRECTION);
        end else if ((fromRow) = (goRow)) and ((fromColumn) = (goColumn)) then begin
            raise SysUtils.Exception.Create(Self.MESSAGE);
        end;
        Exit(directionFactory_.NOT_BORDERED_WITH);
end;
    

// throws Exception
function TGeographicMapDirectionUtil.getDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection;
var
  fromColumn: Integer;
  fromRow: Integer;
  goColumn: Integer;
  goRow: Integer;
  directionFactory_: TDirectionFactory;
  stringMaker_: TStringMaker;
  string_: string;
begin
        fromColumn := fromGeographicMapCellPosition.getColumn();
        fromRow := fromGeographicMapCellPosition.getRow();
        goColumn := toGeographicMapCellPosition.getColumn();
        goRow := toGeographicMapCellPosition.getRow();
        directionFactory_ := TDirectionFactory.getInstance();
        if (fromColumn) > (goColumn) then begin
            Exit(directionFactory_.LEFT);
        end else if (fromColumn) < (goColumn) then begin
            Exit(directionFactory_.RIGHT);
        end else if (fromRow) > (goRow) then begin
            Exit(directionFactory_.UP);
        end else if (fromRow) < (goRow) then begin
            Exit(directionFactory_.DOWN);
        end;
        stringMaker_ := TStringMaker.Create();
        string_ := stringMaker_.append(TCellPosition.toStringCellPosition(fromGeographicMapCellPosition)).append(' == ').append(TCellPosition.toStringCellPosition(toGeographicMapCellPosition)).toString();
        stringMaker_.delete_(0, stringMaker_.length());
        raise SysUtils.Exception.Create(stringMaker_.append('Error: ').append(string_).toString());
end;
    

// throws Exception
function TGeographicMapDirectionUtil.getEightDirectionFromCellPositionToCellPosition(fromGeographicMapCellPosition: TGeographicMapCellPosition; toGeographicMapCellPosition: TGeographicMapCellPosition): TDirection;
var
  fromColumn: Integer;
  fromRow: Integer;
  goColumn: Integer;
  goRow: Integer;
  directionFactory_: TDirectionFactory;
  stringBuffer: TStringMaker;
begin
        fromColumn := fromGeographicMapCellPosition.getColumn();
        fromRow := fromGeographicMapCellPosition.getRow();
        goColumn := toGeographicMapCellPosition.getColumn();
        goRow := toGeographicMapCellPosition.getRow();
        directionFactory_ := TDirectionFactory.getInstance();
        if (fromGeographicMapCellPosition) = (toGeographicMapCellPosition) then begin
            Exit(directionFactory_.NO_DIRECTION);
        end else if (fromRow) = (goRow) then begin
            if (fromColumn) > (goColumn) then begin
                Exit(directionFactory_.LEFT);
            end else if (fromColumn) < (goColumn) then begin
                Exit(directionFactory_.RIGHT);
            end;
        end else if (fromRow) > (goRow) then begin
            if (fromColumn) > (goColumn) then begin
                Exit(directionFactory_.UP_LEFT);
            end else if (fromColumn) < (goColumn) then begin
                Exit(directionFactory_.UP_RIGHT);
            end else if (fromColumn) = (goColumn) then begin
                Exit(directionFactory_.UP);
            end;
        end else if (fromRow) < (goRow) then begin
            if (fromColumn) > (goColumn) then begin
                Exit(directionFactory_.DOWN_LEFT);
            end else if (fromColumn) < (goColumn) then begin
                Exit(directionFactory_.DOWN_RIGHT);
            end else if (fromColumn) = (goColumn) then begin
                Exit(directionFactory_.DOWN);
            end;
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ERROR);
        stringBuffer.append(TCellPosition.toStringCellPosition(fromGeographicMapCellPosition));
        stringBuffer.append(Self.EQUAL);
        stringBuffer.append(TCellPosition.toStringCellPosition(toGeographicMapCellPosition));
        raise SysUtils.Exception.Create(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapDirectionUtil.instance := TGeographicMapDirectionUtil.Create();
  {AB:END}

end.

