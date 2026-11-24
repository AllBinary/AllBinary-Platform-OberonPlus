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
unit BufferedImageCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, BufferedImageInfo;

type
  {AB:TYPES}
  TBufferedImageCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    key: TBufferedImageInfo;
    bufferedImage: TBufferedImage;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(key: TBufferedImageInfo);
        function getKey: TObject; virtual;
        function getBufferedImage: TBufferedImage; virtual;
        procedure setBufferedImage(bufferedImage_: TBufferedImage);
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TBufferedImageCacheable.InitFields;
begin
  
  
end;

function TBufferedImageCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBufferedImageCacheable.Create(key: TBufferedImageInfo);
begin
    inherited Create;
    InitFields;
        Self.key := key;
        Self.setBufferedImage(TBufferedImage.Create(key.getWidth(), key.getHeight(), key.getType()));
end;
    

function TBufferedImageCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.key));
end;
    

function TBufferedImageCacheable.getBufferedImage: TBufferedImage;
begin
        Exit(Self.bufferedImage);
end;
    

procedure TBufferedImageCacheable.setBufferedImage(bufferedImage_: TBufferedImage);
begin
        Self.bufferedImage := bufferedImage_;
end;
    

function TBufferedImageCacheable.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(' ');
        stringBuffer.append(Self.getKey().toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

