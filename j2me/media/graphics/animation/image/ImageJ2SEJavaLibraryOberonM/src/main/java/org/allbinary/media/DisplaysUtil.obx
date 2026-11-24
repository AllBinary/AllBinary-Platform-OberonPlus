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
// package org.allbinary.media
unit DisplaysUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle;

type
  {AB:TYPES}
  TDisplaysUtil = class(TObject)
  public
    class var instance: TDisplaysUtil;
    constructor Create;
        class function getInstance: TDisplaysUtil; static;
        function getPrimaryScreenSize: TRectangle; virtual;
        function getScreenSizesAsRectangleArray: TArray<TRectangle>; virtual;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

constructor TDisplaysUtil.Create;
begin
  inherited Create;
end;
    

class function TDisplaysUtil.getInstance: TDisplaysUtil;
begin
        Exit(TDisplaysUtil.instance);
end;
    

function TDisplaysUtil.getPrimaryScreenSize: TRectangle;
var
  dimension_: TDimension;
begin
        dimension_ := TToolkit.getDefaultToolkit().getScreenSize();
        Exit(TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, dimension_.width, dimension_.height));
end;
    

function TDisplaysUtil.getScreenSizesAsRectangleArray: TArray<TRectangle>;
var
  graphicsEnvironment_: TGraphicsEnvironment;
  graphicsDeviceArray: TArray<TGraphicsDevice>;
  graphicsDevice_: TGraphicsDevice;
  displayMode_: TDisplayMode;
  rectangle_: TRectangle;
  size: Integer;
  rectangleArray: TArray<TRectangle>;
  index: Integer;
begin
        graphicsEnvironment_ := TGraphicsEnvironment.getLocalGraphicsEnvironment();
        graphicsDeviceArray := graphicsEnvironment_.getScreenDevices();
        
        
        
        size := System.Length(graphicsDeviceArray);
        rectangleArray := TJava.NewArray<TRectangle>(size);
        for index := 0 to size - 1 do begin
            graphicsDevice_ := graphicsDeviceArray[index];
            displayMode_ := graphicsDevice_.getDisplayMode();
            rectangle_ := TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, displayMode_.getWidth(), displayMode_.getHeight());
            rectangleArray[index] := rectangle_;
        end;
        Exit(rectangleArray);
end;

initialization
  {AB:INITIALIZATION}
  TDisplaysUtil.instance := TDisplaysUtil.Create();
  {AB:END}

end.

