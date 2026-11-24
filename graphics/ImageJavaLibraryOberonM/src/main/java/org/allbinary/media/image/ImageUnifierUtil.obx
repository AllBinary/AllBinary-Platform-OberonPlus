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
// package org.allbinary.media.image
unit ImageUnifierUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageUtil, GraphicsConfiguration, ImageUnifierProperties;

type
  {AB:TYPES}
  TImageUnifierUtil = class(TObject)
  public
    logUtil: TLogUtil;
    imageUtil: TImageUtil;
    class var instance: TImageUnifierUtil;
    procedure InitFields;
        class function getInstance: TImageUnifierUtil; static;
        constructor Create;
        function getDefaultConfiguration: TGraphicsConfiguration; virtual;
        function getImage(bufferedImageArray: TArray<TBufferedImage>; imageUnifierProperties_: TImageUnifierProperties): TBufferedImage; virtual;
  end;

implementation
uses
  GraphicsEnvironment, GraphicsDevice, Graphics2D, CommonLabels;


{AB:CODE}

procedure TImageUnifierUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageUtil := TImageUtil.getInstance();
end;
    

class function TImageUnifierUtil.getInstance: TImageUnifierUtil;
begin
        Exit(TImageUnifierUtil.instance);
end;
    

constructor TImageUnifierUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TImageUnifierUtil.getDefaultConfiguration: TGraphicsConfiguration;
var
  ge: TGraphicsEnvironment;
  gd: TGraphicsDevice;
begin
        ge := TGraphicsEnvironment.getLocalGraphicsEnvironment();
        gd := ge.getDefaultScreenDevice();
        Exit(gd.getDefaultConfiguration());
end;
    

function TImageUnifierUtil.getImage(bufferedImageArray: TArray<TBufferedImage>; imageUnifierProperties_: TImageUnifierProperties): TBufferedImage;
var
  newBufferedImage: TBufferedImage;
  commonLabels_: TCommonLabels;
  g: TGraphics2D;
  columnIndex: Integer;
  rowIndex: Integer;
  x: Integer;
  y: Integer;
  totalColumnsMinusOne: Integer;
  index: Integer;
begin
        newBufferedImage := Self.imageUtil.create_(imageUnifierProperties_.getWidth(), imageUnifierProperties_.getHeight());
        commonLabels_ := TCommonLabels.getInstance();
        Self.logUtil.putF('Setting Image - ' + commonLabels_.WIDTH_LABEL + TJava.ToString(newBufferedImage.getWidth()) + commonLabels_.HEIGHT_LABEL + TJava.ToString(newBufferedImage.getHeight()), TJava.Box(Self), 'getImage');
        g := newBufferedImage.createGraphics();
        columnIndex := 0;
        rowIndex := 0;
        for index := 0 to System.Length(bufferedImageArray) - 1 do begin
            x := (imageUnifierProperties_.getImageUnifierCell().getWidth().intValue()) * (TJava.PostInc(columnIndex));
            y := (imageUnifierProperties_.getImageUnifierCell().getHeight().intValue()) * (rowIndex);
            Self.logUtil.putF('Adding Image: ' + IntToStr(index) + ' x: ' + IntToStr(x) + ' y: ' + IntToStr(y), TJava.Box(Self), 'getImage');
            g.drawImage(bufferedImageArray[index], x, y, imageUnifierProperties_.getImageUnifierCell().getWidth().intValue(), imageUnifierProperties_.getImageUnifierCell().getHeight().intValue(), nil);
            totalColumnsMinusOne := ((imageUnifierProperties_.getColumns().intValue()) - (1));
            if (columnIndex) > (totalColumnsMinusOne) then begin
                Inc(rowIndex);
                columnIndex := 0;
            end;
        end;
        g.dispose_();
        Exit(newBufferedImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageUnifierUtil.instance := TImageUnifierUtil.Create();
  {AB:END}

end.

