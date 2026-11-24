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
// package org.allbinary.graphics.canvas.transition.progress
unit ProgressRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, SimpleProgressActivityInterface, ARunnable, ProgressCanvas;

type
  {AB:TYPES}
  TProgressRunnable = class(TARunnable)
  public
    midletActivity: ISimpleProgressActivityInterface;
    progressCanvas: TProgressCanvas;
    procedure InitFields;
        constructor Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
        procedure run; override;
  end;

implementation
uses
  MidletActivityBase;


{AB:CODE}

procedure TProgressRunnable.InitFields;
begin
  
  
end;
    

constructor TProgressRunnable.Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
var
  midletActivity2: TMidletActivityBase;
begin
    inherited Create;
    InitFields;
        midletActivity2 := TMidletActivityBase(TJava.ToObject(midletActivity));
        Self.midletActivity := (TJava.ToObject(midletActivity2) as ISimpleProgressActivityInterface);
        Self.progressCanvas := progressCanvas_;
end;
    

procedure TProgressRunnable.run;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

