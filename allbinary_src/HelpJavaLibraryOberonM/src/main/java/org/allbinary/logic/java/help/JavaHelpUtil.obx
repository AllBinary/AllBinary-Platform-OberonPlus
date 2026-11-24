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
// package org.allbinary.logic.java.help
unit JavaHelpUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Point, Dimension;

type
  {AB:TYPES}
  TJavaHelpUtil = class(TObject)
  public
    logUtil: TLogUtil;
    point: TPoint;
    dimension: TDimension;
    contextSensitiveHelpActionEvent: TActionEvent;
    commonStrings: TCommonStrings;
    class var instance: TJavaHelpUtil;
    procedure InitFields;
        class function getInstance: TJavaHelpUtil; static;
        constructor Create;
        function getHelpSet(filePath: string): THelpSet; overload; virtual;
        function getHelpSet(url_: TURL): THelpSet; overload; virtual;
        procedure show(helpSet_: THelpSet); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  JLabel, DisplayHelpFromSource;


{AB:CODE}

procedure TJavaHelpUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.point := TPoint.Create(0, 0);
  Self.dimension := TDimension.Create(640, 480);
  Self.contextSensitiveHelpActionEvent := TActionEvent.Create(TJLabel.Create(), TActionEvent.ACTION_FIRST, nil);
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TJavaHelpUtil.getInstance: TJavaHelpUtil;
begin
        Exit(TJavaHelpUtil.instance);
end;
    

constructor TJavaHelpUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TJavaHelpUtil.getHelpSet(filePath: string): THelpSet;
var
  helpSetURI: TURI;
  helpSetURL: TURL;
begin
        try
            helpSetURI := TFile.Create(filePath).toURI();
            helpSetURL := helpSetURI.toURL();
            Exit(Self.getHelpSet(helpSetURL));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(TJavaHelpUtil.getInstance()), 'set', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

function TJavaHelpUtil.getHelpSet(url_: TURL): THelpSet;
begin
        try
            Exit(THelpSet.Create(nil, url_));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(TJavaHelpUtil.getInstance()), 'set', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

procedure TJavaHelpUtil.show(helpSet_: THelpSet);
var
  helpBroker_: THelpBroker;
begin
        try
            helpBroker_ := helpSet_.createHelpBroker();
            helpBroker_.setLocation(Self.point);
            helpBroker_.setSize(Self.dimension);
            TDisplayHelpFromSource.Create(helpBroker_).actionPerformed(Self.contextSensitiveHelpActionEvent);
            Self.logUtil.putF('CSH Action', TJava.Box(TJavaHelpUtil.getInstance()), 'show');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(TJavaHelpUtil.getInstance()), 'show', TJava.Box(e));
            end;
        end;
end;
    

class procedure TJavaHelpUtil.main(args: TArray<string>);
var
  javaHelpUtil_: TJavaHelpUtil;
begin
        try
            javaHelpUtil_ := TJavaHelpUtil.getInstance();
            javaHelpUtil_.show(javaHelpUtil_.getHelpSet('G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs'));
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TJavaHelpUtil.instance := TJavaHelpUtil.Create();
  {AB:END}

end.

