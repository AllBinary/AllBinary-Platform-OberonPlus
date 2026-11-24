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
// package org.allbinary.input.automation
unit PointFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Point;

type
  {AB:TYPES}
  TPointFactory = class(TObject)
  public
    class var pointArray: TArray<TArray<TPoint>>;
        constructor Create;
        class function getInstance(x: Integer; y: Integer): TPoint; static;
  end;

implementation

{AB:CODE}
    

constructor TPointFactory.Create;
begin
    inherited Create;
end;
    

class function TPointFactory.getInstance(x: Integer; y: Integer): TPoint;
var
  point_: TPoint;
begin
        point_ := TPointFactory.pointArray[x][y];
        if (point_) = (nil) then begin
            TPointFactory.pointArray[x][y] := TPoint.Create(x, y);
            point_ := TPointFactory.pointArray[x][y];
        end;
        Exit(point_);
end;

initialization
  {AB:INITIALIZATION}
  TPointFactory.pointArray := TJava.NewArray2<TPoint>(3000, 3000);
  {AB:END}

end.

