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
// package org.allbinary.logic.communication.log
unit TestRemoteLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTestRemoteLogUtil = class(TObject)
  public
    class var PATH: string;
        constructor Create;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  LogUtil, Globals, CommonStrings;


{AB:CODE}
    

constructor TTestRemoteLogUtil.Create;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
        TGlobals.getInstance().init(TClassLoader.getSystemClassLoader(), TTestRemoteLogUtil.PATH);
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('Test'), 'TestClass', TJava.Box(SysUtils.Exception.Create('Pretend Exception')));
end;
    

// throws Exception
class procedure TTestRemoteLogUtil.main(args: TArray<string>);
begin
        TTestRemoteLogUtil.Create();
end;

initialization
  {AB:INITIALIZATION}
  TTestRemoteLogUtil.PATH := 'G:\mnt\bc\mydev\work\allbinary_src\licensing\data\';
  {AB:END}

end.

