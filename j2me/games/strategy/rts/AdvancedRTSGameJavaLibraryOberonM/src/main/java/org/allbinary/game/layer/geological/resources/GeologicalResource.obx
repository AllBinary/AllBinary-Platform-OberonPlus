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
unit GeologicalResource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGeologicalResource = class(TObject)
  public
    total: Integer;
    initTotal: Integer;
    procedure InitFields;
        constructor Create(initTotal: Integer);
        procedure init; virtual;
        procedure add(value: Integer); virtual;
        procedure remove(value: Integer); virtual;
        function getTotal: Integer; virtual;
        procedure setTotal(total: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TGeologicalResource.InitFields;
begin
  
  
end;
    

constructor TGeologicalResource.Create(initTotal: Integer);
begin
    inherited Create;
    InitFields;
        Self.initTotal := initTotal;
        Self.init();
end;
    

procedure TGeologicalResource.init;
begin
        Self.setTotal(Self.initTotal);
end;
    

procedure TGeologicalResource.add(value: Integer);
var
  max: Integer;
begin
        max := High(Integer);
        if ((Self.getTotal()) + (value)) > (max) then begin
            Self.setTotal(max);
        end else begin
            Self.setTotal((Self.getTotal()) + (value));
        end;
end;
    

procedure TGeologicalResource.remove(value: Integer);
begin
        if ((Self.getTotal()) - (value)) < (0) then begin
            Self.setTotal(0);
        end else begin
            Self.setTotal((Self.getTotal()) - (value));
        end;
end;
    

function TGeologicalResource.getTotal: Integer;
begin
        Exit(Self.total);
end;
    

procedure TGeologicalResource.setTotal(total: Integer);
begin
        Self.total := total;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

