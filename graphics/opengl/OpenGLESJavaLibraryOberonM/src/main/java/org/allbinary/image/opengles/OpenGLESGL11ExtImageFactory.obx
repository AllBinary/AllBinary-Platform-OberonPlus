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
// package org.allbinary.image.opengles
unit OpenGLESGL11ExtImageFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, OpenGLImageFactory;

type
  {AB:TYPES}
  TOpenGLESGL11ExtImageFactory = class(TOpenGLImageFactory)
  public
    constructor Create;
        function getInstance(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory): TImage; override;
  end;

implementation
uses
  OpenGLESGL11ExtImage;


{AB:CODE}

constructor TOpenGLESGL11ExtImageFactory.Create;
begin
  inherited Create;
end;
    

function TOpenGLESGL11ExtImageFactory.getInstance(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory): TImage;
begin
        Exit(TOpenGLESGL11ExtImage.Create(image_, bitmapFactory, textureFactory));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

