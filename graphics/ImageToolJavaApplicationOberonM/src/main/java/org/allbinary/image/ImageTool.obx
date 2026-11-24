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
// package org.allbinary.image
unit ImageTool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TImageTool = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  ARunnable, ImageToolJFrame, CommonStrings;


{AB:CODE}

procedure TImageTool.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TImageTool.Create;
begin
    inherited Create;
    InitFields;
end;
    

class procedure TImageTool.main(args: TArray<string>);
begin
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
                logUtil_ := TLogUtil.getInstance();
                commonStrings_ := TCommonStrings.getInstance();
                try
                    logUtil_.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.RUN);
                    TImageToolJFrame.Create().setVisible(True);
                except
                    on e: SysUtils.Exception do begin
                    logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                    end;
                end;
end;
*));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

