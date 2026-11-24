{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.image
unit ScaleProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, LogUtil, ImageScaleUtil, CommonStrings, ScaleBaseProcessor;

type
  {AB:TYPES}
  TScaleProcessor = class(TScaleBaseProcessor)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageScaleUtil: TImageScaleUtil;
    class var instanceC: TScaleProcessor;
    procedure InitFields;
    constructor Create;
        class function getInstance: TScaleBaseProcessor; static;
        procedure update(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single); override;
  end;

implementation

{AB:CODE}

procedure TScaleProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageScaleUtil := TImageScaleUtil.getInstance();
end;

constructor TScaleProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TScaleProcessor.getInstance: TScaleBaseProcessor;
begin
        Exit(TScaleProcessor.instanceC);
end;
    

procedure TScaleProcessor.update(originalImage: TImage; originalImageArray: TArray<TImage>; ximageToShowArray: TArray<TImage>; unused: Integer; scaleX: Single; scaleY: Single; maxScaleX: Single; maxScaleY: Single);
begin
        try
            Self.imageScaleUtil.scale2(originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TScaleProcessor.instanceC := TScaleProcessor.Create();
  {AB:END}

end.

