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
// package org.allbinary.media.image.io
unit IIOImageCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface;

type
  {AB:TYPES}
  TIIOImageCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    key: string;
    iioImage: TIIOImage;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(key: string);
        function getKey: TObject; virtual;
        procedure setBufferedImage(bufferedImage_: TBufferedImage); virtual;
        function getIioImage: TIIOImage; virtual;
        procedure setIioImage(iioImage_: TIIOImage);
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TIIOImageCacheable.InitFields;
begin
  
  
end;

function TIIOImageCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIIOImageCacheable.Create(key: string);
begin
    inherited Create;
    InitFields;
        Self.key := key;
end;
    

function TIIOImageCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.key));
end;
    

procedure TIIOImageCacheable.setBufferedImage(bufferedImage_: TBufferedImage);
begin
        Self.setIioImage(TIIOImage.Create(bufferedImage_, nil, nil));
end;
    

function TIIOImageCacheable.getIioImage: TIIOImage;
begin
        Exit(Self.iioImage);
end;
    

procedure TIIOImageCacheable.setIioImage(iioImage_: TIIOImage);
begin
        Self.iioImage := iioImage_;
end;
    

function TIIOImageCacheable.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(' Reusable IIOImage');
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

