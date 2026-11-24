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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output
unit ImageActionScriptOutputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageActionScriptOutputInterface;

type
  {AB:TYPES}
  TImageActionScriptOutputProcessor = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class procedure process(imageActionScriptOutputInterface_: IImageActionScriptOutputInterface; frame: Int64); static;
  end;

implementation
uses
  ImageTypes, BasicArrayList, BasicArrayListD, InputImageIOInterfaceFactory, InputImageType, ImageIOInterface, CommonStrings;


{AB:CODE}

procedure TImageActionScriptOutputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TImageActionScriptOutputProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
class procedure TImageActionScriptOutputProcessor.process(imageActionScriptOutputInterface_: IImageActionScriptOutputInterface; frame: Int64);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  imageTypes_: TImageTypes;
  vector: TBasicArrayList;
  size: Integer;
  imageType: TInputImageType;
  imageIOInterface_: IImageIOInterface;
  index: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putFS('Start - Processing at: ' + TJava.ToString(TJava.ToObject(imageActionScriptOutputInterface_)), 'ImageActionScriptOutputProcessor', commonStrings_.PROCESS);
        imageTypes_ := imageActionScriptOutputInterface_.getImageTypes();
        vector := imageTypes_.getVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            imageType := TInputImageType(TJava.ToObject(vector.get(index)));
            imageIOInterface_ := TInputImageIOInterfaceFactory.getInstance(imageType);
            imageIOInterface_.save(frame);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

