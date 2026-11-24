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
// package org.allbinary.input.automation.module.game
unit MeteredGameObject;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MeteredGameObjectInterface;

type
  {AB:TYPES}
  TMeteredGameObject = class(TInterfacedObject, IMeteredGameObjectInterface)
  public
    ratios: TArray<Double>;
    good: Boolean;
    dropping: Boolean;
    minX: Integer;
    maxX: Integer;
    y: Integer;
    size: Integer;
    RATIOS_LABEL: string;
    IS_GOOD_LABEL: string;
    IS_DROPPPING_LABEL: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
        function isGood: Boolean; virtual;
        procedure setGood(good: Boolean); virtual;
        function isDropping: Boolean; virtual;
        procedure setDropping(dropping: Boolean); virtual;
        function getRatios: TArray<Double>; virtual;
        function toString: string; virtual;
        procedure setRatios(ratios: TArray<Double>); virtual;
        function getMinX: Integer; virtual;
        procedure setMinX(minX: Integer); virtual;
        function getMaxX: Integer; virtual;
        procedure setMaxX(maxX: Integer); virtual;
        function getY: Integer; virtual;
        procedure setY(y: Integer); virtual;
        function getSize: Integer; virtual;
        procedure setSize(size: Integer); virtual;
  end;

implementation
uses
  GraphicsAnalysisUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TMeteredGameObject.InitFields;
begin
  
  Self.good := False;
  Self.dropping := False;
  
  
  
  
  Self.RATIOS_LABEL := 'Ratios: ';
  Self.IS_GOOD_LABEL := 'isGood: ';
  Self.IS_DROPPPING_LABEL := 'isDropping: ';
end;

function TMeteredGameObject.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMeteredGameObject.Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
var
  nominator: Double;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.setRatios(TJava.NewArray<Double>(System.Length(bufferedImage)));
        Self.setMinX(minX);
        Self.setMaxX(maxX);
        Self.setY(y);
        Self.setSize((maxX) - (minX));
        for index := 0 to System.Length(bufferedImage) - 1 do begin
            nominator := TGraphicsAnalysisUtil.getNominator(bufferedImage[index], Self.getMinX(), Self.getMaxX(), Self.getY());
            Self.getRatios()[index] := (nominator) / (Self.getSize());
        end;
        if (Self.getRatios()[(System.Length(bufferedImage)) - (1)].doubleValue()) > (0.93) then begin
            Self.setGood(True);
        end else begin
            Self.setGood(False);
        end;
        if (Self.getRatios()[(System.Length(bufferedImage)) - (1)].doubleValue()) < (Self.getRatios()[0].doubleValue()) then begin
            Self.setDropping(True);
        end else begin
            Self.setDropping(False);
        end;
end;
    

function TMeteredGameObject.isGood: Boolean;
begin
        Exit(Self.good);
end;
    

procedure TMeteredGameObject.setGood(good: Boolean);
begin
        Self.good := good;
end;
    

function TMeteredGameObject.isDropping: Boolean;
begin
        Exit(Self.dropping);
end;
    

procedure TMeteredGameObject.setDropping(dropping: Boolean);
begin
        Self.dropping := dropping;
end;
    

function TMeteredGameObject.getRatios: TArray<Double>;
begin
        Exit(Self.ratios);
end;
    

function TMeteredGameObject.toString: string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.RATIOS_LABEL);
        for index := 0 to System.Length(Self.getRatios()) - 1 do begin
            stringBuffer.append(Self.getRatios()[index].toString());
            if (index) < ((System.Length(Self.getRatios())) - (1)) then begin
                stringBuffer.append(commonSeps_.COMMA_SEP);
            end;
        end;
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.IS_GOOD_LABEL);
        stringBuffer.appendboolean(Self.isGood());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.IS_DROPPPING_LABEL);
        stringBuffer.appendboolean(Self.isDropping());
        Exit(stringBuffer.toString());
end;
    

procedure TMeteredGameObject.setRatios(ratios: TArray<Double>);
begin
        Self.ratios := ratios;
end;
    

function TMeteredGameObject.getMinX: Integer;
begin
        Exit(Self.minX);
end;
    

procedure TMeteredGameObject.setMinX(minX: Integer);
begin
        Self.minX := minX;
end;
    

function TMeteredGameObject.getMaxX: Integer;
begin
        Exit(Self.maxX);
end;
    

procedure TMeteredGameObject.setMaxX(maxX: Integer);
begin
        Self.maxX := maxX;
end;
    

function TMeteredGameObject.getY: Integer;
begin
        Exit(Self.y);
end;
    

procedure TMeteredGameObject.setY(y: Integer);
begin
        Self.y := y;
end;
    

function TMeteredGameObject.getSize: Integer;
begin
        Exit(Self.size);
end;
    

procedure TMeteredGameObject.setSize(size: Integer);
begin
        Self.size := size;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

