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
// package org.allbinary.media.image
unit ImageUnifierProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageUnifierCell;

type
  {AB:TYPES}
  TImageUnifierProperties = class(TObject)
  public
    rows: Integer;
    columns: Integer;
    imageUnifierCell: TImageUnifierCell;
    procedure InitFields;
        constructor Create;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        function getRows: Integer; virtual;
        procedure setRows(rows: Integer); virtual;
        function getColumns: Integer; virtual;
        procedure setColumns(columns: Integer); virtual;
        function getImageUnifierCell: TImageUnifierCell; virtual;
        procedure setImageUnifierCell(imageUnifierCell_: TImageUnifierCell); virtual;
  end;

implementation

{AB:CODE}

procedure TImageUnifierProperties.InitFields;
begin
  
  
  
end;
    

constructor TImageUnifierProperties.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageUnifierProperties.getWidth: Integer;
begin
        Exit(((Self.getColumns())) * (Self.getImageUnifierCell().getWidth().intValue()));
end;
    

function TImageUnifierProperties.getHeight: Integer;
begin
        Exit(((Self.getRows())) * (Self.getImageUnifierCell().getHeight().intValue()));
end;
    

function TImageUnifierProperties.getRows: Integer;
begin
        Exit(Self.rows);
end;
    

procedure TImageUnifierProperties.setRows(rows: Integer);
begin
        Self.rows := rows;
end;
    

function TImageUnifierProperties.getColumns: Integer;
begin
        Exit(Self.columns);
end;
    

procedure TImageUnifierProperties.setColumns(columns: Integer);
begin
        Self.columns := columns;
end;
    

function TImageUnifierProperties.getImageUnifierCell: TImageUnifierCell;
begin
        Exit(Self.imageUnifierCell);
end;
    

procedure TImageUnifierProperties.setImageUnifierCell(imageUnifierCell_: TImageUnifierCell);
begin
        Self.imageUnifierCell := imageUnifierCell_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

