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
unit XAxisMathVector;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicDecimal, MathVector;

type
  {AB:TYPES}
  TXAxisMathVector = class(TMathVector)
  public
        constructor Create(magnitudeBasicDecimal: TBasicDecimal; direction: Integer);
        procedure calculate;
  end;

implementation
uses
  YAxisMathVectorUtil;


{AB:CODE}
    

constructor TXAxisMathVector.Create(magnitudeBasicDecimal: TBasicDecimal; direction: Integer);
begin
        inherited Create(magnitudeBasicDecimal, direction);
        Self.calculate();
end;
    

procedure TXAxisMathVector.calculate;
var
  result_: Int64;
begin
        result_ := TYAxisMathVectorUtil.calculate(Self.getMagnitude().getUnscaled(), Self.getDirection());
        Self.resultBasicDecimal := TBasicDecimal.Create(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

