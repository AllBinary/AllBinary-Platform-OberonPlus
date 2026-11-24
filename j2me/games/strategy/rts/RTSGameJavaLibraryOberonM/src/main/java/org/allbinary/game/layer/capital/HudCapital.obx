{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.capital
unit HudCapital;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NumberStringHud, Capital;

type
  {AB:TYPES}
  THudCapital = class(TCapital)
  public
    capitalGraphic: TNumberStringHud;
    procedure InitFields;
        constructor Create(moneyGraphic: TNumberStringHud);
        procedure removeMoney(points: Integer); override;
        function getTotalMoney: Integer; override;
        procedure addMoney(points: Integer); override;
  end;

implementation

{AB:CODE}

procedure THudCapital.InitFields;
begin
  
end;
    

constructor THudCapital.Create(moneyGraphic: TNumberStringHud);
begin
    inherited Create;
    InitFields;
        Self.capitalGraphic := moneyGraphic;
end;
    

procedure THudCapital.removeMoney(points: Integer);
begin
        inherited removeMoney(points);
        Self.capitalGraphic.reduce(points);
end;
    

function THudCapital.getTotalMoney: Integer;
begin
        Exit(Self.capitalGraphic.get());
end;
    

procedure THudCapital.addMoney(points: Integer);
begin
        inherited addMoney(points);
        Self.capitalGraphic.add(points);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

