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
// package org.allbinary.media.graphics.geography.map.racetrack
unit RaceTracksPathPrinter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TRaceTracksPathPrinter = class(TObject)
  public
    constructor Create;
        procedure printPath(list: TBasicArrayList);
        procedure printPaths(list: TBasicArrayList); virtual;
  end;

implementation
uses
  StringMaker, PreLogUtil, CommonLabels;


{AB:CODE}

constructor TRaceTracksPathPrinter.Create;
begin
  inherited Create;
end;
    

procedure TRaceTracksPathPrinter.printPath(list: TBasicArrayList);
var
  size: Integer;
  anyType: TObject;
  index: Integer;
begin
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.get(index));
            TPreLogUtil.put(TStringMaker.Create().append('pathList.add(cellPositionFactory.getInstance').append(anyType.toString()).append(');').toString(), TJava.Box(Self), 'printPath');
        end;
end;
    

procedure TRaceTracksPathPrinter.printPaths(list: TBasicArrayList);
var
  size: Integer;
  index: Integer;
begin
        size := list.size();
        for index := 0 to size - 1 do begin
            WriteLn(TStringMaker.Create().append(' Path ').appendint(index).append(TCommonLabels.getInstance().COLON_SEP).toString());
            Self.printPath(TBasicArrayList(TJava.ToObject(list.get(index))));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

