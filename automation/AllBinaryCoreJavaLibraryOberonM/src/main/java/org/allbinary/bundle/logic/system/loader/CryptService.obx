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
// package org.allbinary.bundle.logic.system.loader
unit CryptService;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbCryptUtil, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TCryptService = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abCryptUtil: TAbCryptUtil;
    procedure InitFields;
        constructor Create;
        function getDecryptedInputStream(abeClientInformation: IAbeClientInformationInterface; name: string; inputStream_: TInputStream): TInputStream; virtual;
        procedure showLicenseDialog(abeClientInformation: IAbeClientInformationInterface; e: SysUtils.Exception);
  end;

implementation
uses
  Globals, URLGLOBALS, BasicTextJDialog, ExitCloseListener, AbKeys, AbeLicenseInterface, AbeLicenseInterfaceFactory, AbeNoLicense, LicensingException;


{AB:CODE}

procedure TCryptService.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abCryptUtil := TAbCryptUtil.getInstance();
end;
    

constructor TCryptService.Create;
begin
    inherited Create;
    InitFields;
        TGlobals.getInstance().init(TClassLoader.getSystemClassLoader(), './');
        Self.logUtil.putF('Set Globals: ' + TJava.ToString(TURLGLOBALS.getWebappPath()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

function TCryptService.getDecryptedInputStream(abeClientInformation: IAbeClientInformationInterface; name: string; inputStream_: TInputStream): TInputStream;
var
  key: string;
  decrypted: TArray<ShortInt>;
begin
        try
            key := TAbKeys.getInstance().getKey(abeClientInformation, name);
            decrypted := Self.abCryptUtil.decrypt(inputStream_, key);
            Exit(TByteArrayInputStream.Create(decrypted));
        except
            on e: TLicensingException do begin
            Self.showLicenseDialog(abeClientInformation, e);
            end;
            on e: SysUtils.Exception do begin
            Self.showLicenseDialog(abeClientInformation, e);
            end;
        end;
        Exit(nil);
end;
    

procedure TCryptService.showLicenseDialog(abeClientInformation: IAbeClientInformationInterface; e: SysUtils.Exception);
var
  basicTextJDialog_: TBasicTextJDialog;
  abeLicenseInterface_: IAbeLicenseInterface;
begin
        try
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            basicTextJDialog_ := TBasicTextJDialog.Create(e.Message);
            try
                abeLicenseInterface_ := TAbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation);
                if TJava.ToObject(abeLicenseInterface_) <> TJava.ToObject(TAbeNoLicense.getInstance()) then begin
                    if abeLicenseInterface_.isValid() then begin
                        basicTextJDialog_.setText('Subscription Invalid');
                    end;
                end;
            except
                on e2: TLicensingException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e2));
                end;
            end;
            basicTextJDialog_.addCloseListener(TExitCloseListener.Create());
            basicTextJDialog_.setVisible(True);
        except
            on e3: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e3));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

