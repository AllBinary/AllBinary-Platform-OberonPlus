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
// package org.allbinary.graphics.j2me.workarea.canvas
unit Grid;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TGrid = class(TObject)
  public
    grid: TGPoint;
    isGridOn_: Boolean;
    isGridPossible_: Boolean;
    zoom: Integer;
    isChanged: Boolean;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(grid_: TGrid); overload;
        function isGridOn: Boolean; virtual;
        function isGridPossible: Boolean; virtual;
        function getGrid: TGPoint; virtual;
        function getZoom: Integer; virtual;
        procedure showGrid(value: Boolean); virtual;
        procedure setZoom(zoom: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TGrid.InitFields;
begin
  
  Self.isGridOn_ := True;
  Self.isGridPossible_ := False;
  Self.zoom := 3;
  Self.isChanged := True;
end;
    

constructor TGrid.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TGrid.Create(grid_: TGrid);
begin
    inherited Create;
    InitFields;
        Self.grid := grid_.grid;
        Self.showGrid(grid_.isGridOn_);
        Self.isGridPossible_ := grid_.isGridPossible_;
        Self.setZoom(grid_.getZoom());
end;
    

function TGrid.isGridOn: Boolean;
begin
        Exit(Self.isGridOn_);
end;
    

function TGrid.isGridPossible: Boolean;
begin
        Exit(Self.isGridPossible_);
end;
    

function TGrid.getGrid: TGPoint;
begin
        Exit(Self.grid);
end;
    

function TGrid.getZoom: Integer;
begin
        Exit(Self.zoom);
end;
    

procedure TGrid.showGrid(value: Boolean);
begin
        Self.isGridOn_ := value;
end;
    

procedure TGrid.setZoom(zoom: Integer);
begin
        Self.zoom := zoom;
        if (Self.zoom) < (1) then begin
            zoom := 1;
        end;
        Self.isChanged := True;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

