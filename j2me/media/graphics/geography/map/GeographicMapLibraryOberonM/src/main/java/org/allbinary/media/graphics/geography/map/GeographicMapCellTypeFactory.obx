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
unit GeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GeographicMapCellType;

type
  {AB:TYPES}
  TGeographicMapCellTypeFactory = class(TObject)
  public
    logUtil: TLogUtil;
    geographicMapCellTypeArray: TArray<TGeographicMapCellType>;
    class var instance: TGeographicMapCellTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGeographicMapCellTypeFactory; static;
        function get(type_: Integer): TGeographicMapCellType; virtual;
        function getGeographicMapCellTypeArray: TArray<TGeographicMapCellType>; virtual;
        function getStartType: Integer; virtual;
        function getEndType: Integer; virtual;
        function getEmptyType: Integer; virtual;
        function isPath(cellType: TGeographicMapCellType): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TGeographicMapCellTypeFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.geographicMapCellTypeArray := TJava.NewArray<TGeographicMapCellType>(512);
end;

constructor TGeographicMapCellTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGeographicMapCellTypeFactory.getInstance: TGeographicMapCellTypeFactory;
begin
        Exit(TGeographicMapCellTypeFactory.instance);
end;
    

function TGeographicMapCellTypeFactory.get(type_: Integer): TGeographicMapCellType;
begin
        Exit(Self.geographicMapCellTypeArray[type_]);
end;
    

function TGeographicMapCellTypeFactory.getGeographicMapCellTypeArray: TArray<TGeographicMapCellType>;
begin
        Exit(Self.geographicMapCellTypeArray);
end;
    

function TGeographicMapCellTypeFactory.getStartType: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TGeographicMapCellTypeFactory.getEndType: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TGeographicMapCellTypeFactory.getEmptyType: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TGeographicMapCellTypeFactory.isPath(cellType: TGeographicMapCellType): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapCellTypeFactory.instance := TGeographicMapCellTypeFactory.Create();
  {AB:END}

end.

