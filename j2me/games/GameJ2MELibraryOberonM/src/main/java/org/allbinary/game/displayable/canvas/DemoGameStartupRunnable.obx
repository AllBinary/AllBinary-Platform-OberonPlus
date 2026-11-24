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
unit DemoGameStartupRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ABRunnable, DemoCanvas;

type
  {AB:TYPES}
  TDemoGameStartupRunnable = class(TABRunnable)
  public
    logUtil: TLogUtil;
    demoCanvas: TDemoCanvas;
    class var TYPE_: Integer;
    procedure InitFields;
        constructor Create(demoCanvas_: TDemoCanvas);
        procedure run; override;
        function getType: Integer; override;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TDemoGameStartupRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TDemoGameStartupRunnable.Create(demoCanvas_: TDemoCanvas);
begin
    inherited Create;
    InitFields;
        Self.demoCanvas := demoCanvas_;
end;
    

procedure TDemoGameStartupRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.setRunning(True);
            Self.demoCanvas.stopGameDemo();
            Self.demoCanvas.create_();
            Self.demoCanvas.start();
            Self.setRunning(False);
        except
            on e: SysUtils.Exception do begin
            Self.setRunning(False);
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;
    

function TDemoGameStartupRunnable.getType: Integer;
begin
        Exit(TDemoGameStartupRunnable.TYPE_);
end;

initialization
  {AB:INITIALIZATION}
  TDemoGameStartupRunnable.TYPE_ := 4;
  {AB:END}

end.

