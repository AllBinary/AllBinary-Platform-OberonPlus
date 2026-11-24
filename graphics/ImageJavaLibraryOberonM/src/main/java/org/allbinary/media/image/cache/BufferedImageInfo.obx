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
// package org.allbinary.media.image.cache
unit BufferedImageInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBufferedImageInfo = class(TObject)
  public
    width: Integer;
    height: Integer;
    type_: Integer;
    procedure InitFields;
        constructor Create(width: Integer; height: Integer; type_: Integer);
        function getWidth: Integer; virtual;
        procedure setWidth(width: Integer); virtual;
        function getHeight: Integer; virtual;
        procedure setHeight(height: Integer); virtual;
        function getType: Integer; virtual;
        procedure setType(type_: Integer); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels;


{AB:CODE}

procedure TBufferedImageInfo.InitFields;
begin
  
  
  
end;
    

constructor TBufferedImageInfo.Create(width: Integer; height: Integer; type_: Integer);
begin
    inherited Create;
    InitFields;
        Self.width := width;
        Self.height := height;
        Self.type_ := type_;
end;
    

function TBufferedImageInfo.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

procedure TBufferedImageInfo.setWidth(width: Integer);
begin
        Self.width := width;
end;
    

function TBufferedImageInfo.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

procedure TBufferedImageInfo.setHeight(height: Integer);
begin
        Self.height := height;
end;
    

function TBufferedImageInfo.getType: Integer;
begin
        Exit(Self.type_);
end;
    

procedure TBufferedImageInfo.setType(type_: Integer);
begin
        Self.type_ := type_;
end;
    

function TBufferedImageInfo.toString: string;
var
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('BufferedImageInfo -');
        stringBuffer.append(commonLabels_.WIDTH_LABEL);
        stringBuffer.appendint(Self.getWidth());
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Self.getHeight());
        stringBuffer.append(' Type: ');
        stringBuffer.appendint(Self.getType());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

