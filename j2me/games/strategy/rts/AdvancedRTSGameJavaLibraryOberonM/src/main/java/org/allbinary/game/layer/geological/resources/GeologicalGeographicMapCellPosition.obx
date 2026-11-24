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
// package org.allbinary.game.layer.geological.resources
unit GeologicalGeographicMapCellPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition, GeologicalResource;

type
  {AB:TYPES}
  TGeologicalGeographicMapCellPosition = class(TGeographicMapCellPosition)
  public
    geologicalResource: TGeologicalResource;
    procedure InitFields;
        constructor Create(column: Integer; row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer; geologicalResource_: TGeologicalResource);
        function getGeologicalResource: TGeologicalResource; virtual;
  end;

implementation

{AB:CODE}

procedure TGeologicalGeographicMapCellPosition.InitFields;
begin
  
end;
    

constructor TGeologicalGeographicMapCellPosition.Create(column: Integer; row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer; geologicalResource_: TGeologicalResource);
begin
        inherited Create(column, row, columns, rows, width, height);
        InitFields;
        Self.geologicalResource := geologicalResource_;
end;
    

function TGeologicalGeographicMapCellPosition.getGeologicalResource: TGeologicalResource;
begin
        Exit(Self.geologicalResource);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

