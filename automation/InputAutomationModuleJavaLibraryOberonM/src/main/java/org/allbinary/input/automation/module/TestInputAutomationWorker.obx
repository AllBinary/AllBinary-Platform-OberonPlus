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
// package org.allbinary.input.automation.module
unit TestInputAutomationWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScreenCaptureImagesWorker, ImageComparisonWorker, SaveImageComparisonWorker, MotionRectanglesWorker, SaveMotionRectanglesResultsWorker, TestInputForMotionRectanglesResultsWorker;

type
  {AB:TYPES}
  TTestInputAutomationWorker = class(TObject)
  public
    captureWorker: TScreenCaptureImagesWorker;
    imageComparisonWorker: TImageComparisonWorker;
    motionRectanglesWorker: TMotionRectanglesWorker;
    changedPixelsImageComparisonResultsWorker: TSaveImageComparisonWorker;
    saveMotionRectanglesAsImagesWorker: TSaveMotionRectanglesResultsWorker;
    moveMouseToFirstMotionRectanglesResultsWorker: TTestInputForMotionRectanglesResultsWorker;
    procedure InitFields;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTestInputAutomationWorker.InitFields;
begin
  
  
  
  
  
  
end;
    

constructor TTestInputAutomationWorker.Create;
begin
    inherited Create;
    InitFields;
        Self.captureWorker := TScreenCaptureImagesWorker.Create();
        Self.changedPixelsImageComparisonResultsWorker := TSaveImageComparisonWorker.Create();
        Self.saveMotionRectanglesAsImagesWorker := TSaveMotionRectanglesResultsWorker.Create();
        Self.moveMouseToFirstMotionRectanglesResultsWorker := TTestInputForMotionRectanglesResultsWorker.Create();
        Self.motionRectanglesWorker.addListenerInterface(Self.saveMotionRectanglesAsImagesWorker);
        Self.motionRectanglesWorker.addListenerInterface(Self.moveMouseToFirstMotionRectanglesResultsWorker);
        Self.imageComparisonWorker.addListenerInterface(Self.changedPixelsImageComparisonResultsWorker);
        Self.imageComparisonWorker.addListenerInterface(Self.motionRectanglesWorker);
        Self.captureWorker.addListenerInterface(Self.imageComparisonWorker);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

