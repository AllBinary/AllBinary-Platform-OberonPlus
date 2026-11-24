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
// package org.allbinary.media.image.comparison.pixel
unit PixelDelta;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, CacheableInterface, ColorDelta;

type
  {AB:TYPES}
  TPixelDelta = class(TInterfacedObject, ICacheableInterface)
  public
    point: TGPoint;
    colorDelta: TColorDelta;
    key: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(point: TGPoint; colorDelta_: TColorDelta);
        function getKey: TObject; overload; virtual;
        class function getKey(point: TGPoint; colorDelta_: TColorDelta): TObject; overload; static;
        function getPoint: TGPoint; virtual;
        procedure setPoint(point: TGPoint); virtual;
        function getColorDelta: TColorDelta; virtual;
        procedure setColorDelta(colorDelta_: TColorDelta); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  TsUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TPixelDelta.InitFields;
begin
  
  
  
end;

function TPixelDelta.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPixelDelta.Create(point: TGPoint; colorDelta_: TColorDelta);
begin
    inherited Create;
    InitFields;
        Self.setPoint(point);
        Self.setColorDelta(colorDelta_);
        Self.key := TJava.Box(TPixelDelta.getKey(Self.getPoint(), Self.getColorDelta()));
end;
    

function TPixelDelta.getKey: TObject;
begin
        Exit(TJava.Box(Self.key));
end;
    

class function TPixelDelta.getKey(point: TGPoint; colorDelta_: TColorDelta): TObject;
begin
        Exit(TJava.Box(TStringMaker.Create().appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(point))))).append(TCommonSeps.getInstance().UNDERSCORE).append(colorDelta_.getKey().toString()).toString()));
end;
    

function TPixelDelta.getPoint: TGPoint;
begin
        Exit(Self.point);
end;
    

procedure TPixelDelta.setPoint(point: TGPoint);
begin
        Self.point := point;
end;
    

function TPixelDelta.getColorDelta: TColorDelta;
begin
        Exit(Self.colorDelta);
end;
    

procedure TPixelDelta.setColorDelta(colorDelta_: TColorDelta);
begin
        Self.colorDelta := colorDelta_;
end;
    

function TPixelDelta.toString: string;
begin
        Exit(TStringMaker.Create().append('PixelDelta: Point: ').append(Self.point.toString()).append(TCommonSeps.getInstance().SPACE).append(Self.colorDelta.toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

