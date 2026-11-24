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
unit BufferedImageFrameCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface;

type
  {AB:TYPES}
  TBufferedImageFrameCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    frame: Int64;
    bufferedImage: TBufferedImage;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(bufferedImage_: TBufferedImage; frame: Int64);
        function getKey: TObject; virtual;
        function getBufferedImage: TBufferedImage; virtual;
        procedure setBufferedImage(bufferedImage_: TBufferedImage);
        function getFrame: Int64; virtual;
        procedure setFrame(frame: Int64); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TBufferedImageFrameCacheable.InitFields;
begin
  
  
end;

function TBufferedImageFrameCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBufferedImageFrameCacheable.Create(bufferedImage_: TBufferedImage; frame: Int64);
begin
    inherited Create;
    InitFields;
        Self.frame := frame;
        Self.setBufferedImage(bufferedImage_);
end;
    

function TBufferedImageFrameCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.frame));
end;
    

function TBufferedImageFrameCacheable.getBufferedImage: TBufferedImage;
begin
        Exit(Self.bufferedImage);
end;
    

procedure TBufferedImageFrameCacheable.setBufferedImage(bufferedImage_: TBufferedImage);
begin
        Self.bufferedImage := bufferedImage_;
end;
    

function TBufferedImageFrameCacheable.getFrame: Int64;
begin
        Exit(Self.frame);
end;
    

procedure TBufferedImageFrameCacheable.setFrame(frame: Int64);
begin
        Self.frame := frame;
end;
    

function TBufferedImageFrameCacheable.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(' Frame: ');
        stringBuffer.appendlong(Self.getFrame());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

