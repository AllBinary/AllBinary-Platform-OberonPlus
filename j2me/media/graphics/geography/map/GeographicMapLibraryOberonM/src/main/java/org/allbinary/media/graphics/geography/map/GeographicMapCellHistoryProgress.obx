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
unit GeographicMapCellHistoryProgress;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellHistory, GeographicMapCellHistoryProgressBase;

type
  {AB:TYPES}
  TGeographicMapCellHistoryProgress = class(TGeographicMapCellHistoryProgressBase)
  public
    totalVisitedArray: TArray<Integer>;
    geographicMapCellHistoryArray: TArray<TGeographicMapCellHistory>;
    procedure InitFields;
        constructor Create(geographicMapCellHistoryArray: TArray<TGeographicMapCellHistory>);
        procedure init; override;
        function isAnyProgress: Boolean; override;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TGeographicMapCellHistoryProgress.InitFields;
begin
  Self.totalVisitedArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  Self.geographicMapCellHistoryArray := TGeographicMapCellHistory.NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY;
end;
    

constructor TGeographicMapCellHistoryProgress.Create(geographicMapCellHistoryArray: TArray<TGeographicMapCellHistory>);
begin
    inherited Create;
    InitFields;
        Self.geographicMapCellHistoryArray := geographicMapCellHistoryArray;
        Self.init();
end;
    

procedure TGeographicMapCellHistoryProgress.init;
begin
        Self.totalVisitedArray := TJava.NewArray<Integer>(System.Length(Self.geographicMapCellHistoryArray));
end;
    

function TGeographicMapCellHistoryProgress.isAnyProgress: Boolean;
var
  isProgressing: Boolean;
  size: Integer;
  currentTotalVisited: Integer;
  totalVisited: Integer;
  index: Integer;
begin
        isProgressing := False;
        size := System.Length(Self.geographicMapCellHistoryArray);
        
        
        for index := 0 to size - 1 do begin
            totalVisited := Self.geographicMapCellHistoryArray[index].getTotalVisited();
            currentTotalVisited := Self.totalVisitedArray[index];
            if (currentTotalVisited) < (totalVisited) then begin
                isProgressing := True;
                Self.totalVisitedArray[index] := totalVisited;
            end;
        end;
        Exit(isProgressing);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

