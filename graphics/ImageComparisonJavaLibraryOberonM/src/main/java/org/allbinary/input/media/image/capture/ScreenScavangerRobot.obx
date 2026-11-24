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
// package org.allbinary.input.media.image.capture
unit ScreenScavangerRobot;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TScreenScavangerRobot = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create;
        function getScreenAsBufferedImages: TArray<TBufferedImage>; virtual;
  end;

implementation
uses
  InputRobotFactory, InputRobotInterface, ABHashtable;


{AB:CODE}

procedure TScreenScavangerRobot.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TScreenScavangerRobot.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TScreenScavangerRobot.getScreenAsBufferedImages: TArray<TBufferedImage>;
var
  dimScreenSize: TDimension;
  rectScreenSize: TRectangle;
  robotHashtable: TABHashtable<TObject, TObject>;
  bufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
  inputRobotInterface_: IInputRobotInterface;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getScreenAsBufferedImages');
        dimScreenSize := TToolkit.getDefaultToolkit().getScreenSize();
        rectScreenSize := TRectangle.Create(dimScreenSize);
        robotHashtable := TInputRobotFactory.getInstance().get();
        bufferedImageArray := TJava.NewArray<TBufferedImage>(1);
        index := 0;
        inputRobotInterface_ := (TJava.ToObject(robotHashtable.get(TJava.Box('Java Robot'))) as IInputRobotInterface);
        bufferedImageArray[index] := inputRobotInterface_.createScreenCapture(rectScreenSize);
        Self.logUtil.putF('Finish', TJava.Box(Self), 'getScreenAsBufferedImages');
        Exit(bufferedImageArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

