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
unit OpenGLESGL11ExtImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Image, DisplayChangeEvent, LogUtil, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, OpenGLESImage;

type
  {AB:TYPES}
  // Many devices don't support this even though it is supposed to
  TOpenGLESGL11ExtImage = class(TOpenGLESImage)
  public
    logUtil: TLogUtil;
    a: Integer;
    rectangle: TArray<Integer>;
    procedure InitFields;
        constructor Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure set_(gl_: IGL); override;
        procedure draw(gl_: IGL10; x: Integer; y: Integer; z: Integer); override;
  end;

implementation
uses
  GL11, GL11Ext, DisplayInfoSingleton, OpenGLLogUtil;


{AB:CODE}

procedure TOpenGLESGL11ExtImage.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TOpenGLESGL11ExtImage.Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
begin
        inherited Create(image_, bitmapFactory, textureFactory);
        InitFields;
        Self.onDisplayChangeEvent(TDisplayInfoSingleton.getInstance().displayChangeEvent);
        Self.rectangle := TArray<Integer>.Create(0, Self.getHeight(), Self.getWidth(), -Self.getHeight());
end;
    

procedure TOpenGLESGL11ExtImage.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onResize');
            Self.a := (TDisplayInfoSingleton.getInstance().getLastHeight()) - (Self.getHeight());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onResize', TJava.Box(e));
            end;
        end;
end;
    

procedure TOpenGLESGL11ExtImage.set_(gl_: IGL);
var
  gl11_: IGL11;
begin
        Self.onDisplayChangeEvent(TDisplayInfoSingleton.getInstance().displayChangeEvent);
        gl11_ := (TJava.ToObject(gl_) as IGL11);
        if inherited initTexture((TJava.ToObject(gl11_) as IGL10)) then begin
            Self.textureFactory.load((TJava.ToObject(gl11_) as IGL10), GL10.GL_TEXTURE_2D, 0, Self, 0, True);
            gl11_.glTexParameteriv(GL10.GL_TEXTURE_2D, IGL11Ext.GL_TEXTURE_CROP_RECT_OES, Self.rectangle, 0);
            gl11_.glDisable(GL10.GL_TEXTURE_2D);
            TOpenGLLogUtil.getInstance().logError(gl11_, Self);
        end;
end;
    

procedure TOpenGLESGL11ExtImage.draw(gl_: IGL10; x: Integer; y: Integer; z: Integer);
var
  gl11Ext_: IGL11Ext;
begin
        gl_.glEnable(GL10.GL_TEXTURE_2D);
        gl_.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
        gl11Ext_ := (TJava.ToObject(gl_) as IGL11Ext);
        gl11Ext_.glDrawTexfOES(x, ((Self.a) - (y)), z, (1.0 * (Self.getWidth())), (1.0 * (Self.getHeight())));
        gl_.glDisable(GL10.GL_TEXTURE_2D);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

