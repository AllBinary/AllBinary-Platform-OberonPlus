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
// package org.allbinary.game.displayable.canvas
unit GameCanvasPauseRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryGameCanvas, GameRunnable;

type
  {AB:TYPES}
  TGameCanvasPauseRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure run; override;
        procedure processLoopSleep; override;
  end;

implementation
uses
  AndroidUtil, Features, OpenGLFeatureFactory, CommonStrings;


{AB:CODE}

procedure TGameCanvasPauseRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TGameCanvasPauseRunnable.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TGameCanvasPauseRunnable.run;
begin
end;
    

// throws Exception
procedure TGameCanvasPauseRunnable.processLoopSleep;
var
  features_: TFeatures;
  isOpenGL: Boolean;
  commonStrings_: TCommonStrings;
begin
        try
            features_ := TFeatures.getInstance();
            isOpenGL := features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
            if isOpenGL then begin
                Self.allBinaryGameCanvas.processSleep();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

