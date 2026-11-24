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
// package org.allbinary.logic.system.hardware
unit HardwareFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, LogUtil, GenericOperatingSystem, HardwareInterface;

type
  {AB:TYPES}
  THardwareFactory = class(TObject)
  public
    logUtil: TLogUtil;
    tsUtil: TTsUtil;
    class var instance: THardwareFactory;
    procedure InitFields;
        class function getInstance: THardwareFactory; overload; static;
        constructor Create;
        function getInstance(os: TGenericOperatingSystem): IHardwareInterface; overload; virtual;
  end;

implementation
uses
  NoHardware, AndroidHardware, OperatingSystems, CommonStrings;


{AB:CODE}

procedure THardwareFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
end;
    

class function THardwareFactory.getInstance: THardwareFactory;
begin
        Exit(THardwareFactory.instance);
end;
    

constructor THardwareFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function THardwareFactory.getInstance(os: TGenericOperatingSystem): IHardwareInterface;
var
  operatingSystems_: TOperatingSystems;
  commonStrings_: TCommonStrings;
begin
        try
            operatingSystems_ := TOperatingSystems.getInstance();
            if (Self.tsUtil.compareTo(os.getName(), operatingSystems_.ANDROID)) = (0) then begin
                Exit(TAndroidHardware.Create());
            end else if (Self.tsUtil.compareTo(os.getName(), operatingSystems_.HARMONY)) = (0) then begin
                Exit(TAndroidHardware.Create());
            end;
            raise SysUtils.Exception.Create('No Hardware Imp for: ' + os.getName());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put('Ignoring Exception Returning NoHardware', TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(TNoHardware.Create());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  THardwareFactory.instance := THardwareFactory.Create();
  {AB:END}

end.

