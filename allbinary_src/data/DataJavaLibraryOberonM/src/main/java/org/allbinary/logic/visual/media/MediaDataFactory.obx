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
// package org.allbinary.logic.visual.media
unit MediaDataFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MediaData;

type
  {AB:TYPES}
  TMediaDataFactory = class(TObject)
  public
    AVI: TMediaData;
    BMP: TMediaData;
    CEL: TMediaData;
    FITS: TMediaData;
    FLI: TMediaData;
    GBR: TMediaData;
    GIF: TMediaData;
    GIH: TMediaData;
    JPG: TMediaData;
    PIX: TMediaData;
    PNG: TMediaData;
    PNM: TMediaData;
    PSD: TMediaData;
    PSP: TMediaData;
    PS: TMediaData;
    SGI: TMediaData;
    SWF: TMediaData;
    TGA: TMediaData;
    TIFF: TMediaData;
    WMF: TMediaData;
    class var instance: TMediaDataFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMediaDataFactory; static;
  end;

implementation

{AB:CODE}

procedure TMediaDataFactory.InitFields;
begin
  Self.AVI := TMediaData.Create('avi');
  Self.BMP := TMediaData.Create('bmp');
  Self.CEL := TMediaData.Create('cel');
  Self.FITS := TMediaData.Create('fits');
  Self.FLI := TMediaData.Create('fli');
  Self.GBR := TMediaData.Create('gbr');
  Self.GIF := TMediaData.Create('gif');
  Self.GIH := TMediaData.Create('gih');
  Self.JPG := TMediaData.Create('jpg');
  Self.PIX := TMediaData.Create('pix');
  Self.PNG := TMediaData.Create('png');
  Self.PNM := TMediaData.Create('pnm');
  Self.PSD := TMediaData.Create('psd');
  Self.PSP := TMediaData.Create('psp');
  Self.PS := TMediaData.Create('ps');
  Self.SGI := TMediaData.Create('SGI');
  Self.SWF := TMediaData.Create('swf');
  Self.TGA := TMediaData.Create('tga');
  Self.TIFF := TMediaData.Create('tiff');
  Self.WMF := TMediaData.Create('wmf');
end;

constructor TMediaDataFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMediaDataFactory.getInstance: TMediaDataFactory;
begin
        Exit(TMediaDataFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMediaDataFactory.instance := TMediaDataFactory.Create();
  {AB:END}

end.

