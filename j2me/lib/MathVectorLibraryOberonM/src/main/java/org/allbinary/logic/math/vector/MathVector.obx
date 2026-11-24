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
// package org.allbinary.logic.math.vector
unit MathVector;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicDecimal, MathVectorInterface;

type
  {AB:TYPES}
  TMathVector = class(TInterfacedObject, IMathVectorInterface)
  public
    magnitudeBasicDecimal: TBasicDecimal;
    direction: Integer;
    resultBasicDecimal: TBasicDecimal;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(magnitudeBasicDecimal: TBasicDecimal; direction: Integer);
        function getMagnitude: TBasicDecimal; virtual;
        function getDirection: Integer; virtual;
        function getResult: TBasicDecimal; virtual;
  end;

implementation

{AB:CODE}

procedure TMathVector.InitFields;
begin
  
  
  
end;

function TMathVector.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMathVector.Create(magnitudeBasicDecimal: TBasicDecimal; direction: Integer);
begin
    inherited Create;
    InitFields;
        Self.magnitudeBasicDecimal := magnitudeBasicDecimal;
        Self.direction := direction;
end;
    

function TMathVector.getMagnitude: TBasicDecimal;
begin
        Exit(Self.magnitudeBasicDecimal);
end;
    

function TMathVector.getDirection: Integer;
begin
        Exit(Self.direction);
end;
    

function TMathVector.getResult: TBasicDecimal;
begin
        Exit(Self.resultBasicDecimal);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

