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
// package org.allbinary.graphics.j2me.workarea.tools
unit Points;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PointsInterface;

type
  {AB:TYPES}
  TPoints = class(TInterfacedObject, IPointsInterface)
  public
    pointVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init; virtual;
        function getPoints: TBasicArrayList; virtual;
        procedure addPoints(vector: TBasicArrayList); virtual;
        function isValid: Boolean; virtual;
        function getSize: Integer; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TPoints.InitFields;
begin
  
end;

function TPoints.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPoints.Create;
begin
    inherited Create;
    InitFields;
        Self.pointVector := TBasicArrayListD.Create();
end;
    

procedure TPoints.init;
begin
        Self.pointVector.clear();
end;
    

function TPoints.getPoints: TBasicArrayList;
begin
        Exit(Self.pointVector);
end;
    

procedure TPoints.addPoints(vector: TBasicArrayList);
begin
        Self.pointVector.addAll2(vector);
end;
    

function TPoints.isValid: Boolean;
begin
        if (Self.pointVector.size()) > (1) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPoints.getSize: Integer;
begin
        Exit(Self.pointVector.size());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

