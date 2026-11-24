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
// package org.allbinary.logic.communication.smtp.info
unit StoreEmailInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, BasicEmailInfo;

type
  {AB:TYPES}
  TStoreEmailInfo = class(TBasicEmailInfo)
  public
    logUtil: TLogUtil;
    storeFrontInterface: IStoreFrontInterface;
    procedure InitFields;
        constructor Create(storeFrontInterface_: IStoreFrontInterface; subject: string; textBody: string);
        procedure init; virtual;
  end;

implementation
uses
  ContextConfigurationInterface, EmailServerConfigurationInterface, CommonStrings;


{AB:CODE}

procedure TStoreEmailInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TStoreEmailInfo.Create(storeFrontInterface_: IStoreFrontInterface; subject: string; textBody: string);
var
  commonStrings_: TCommonStrings;
begin
        inherited Create(subject, textBody);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
        Self.storeFrontInterface := storeFrontInterface_;
        Self.init();
end;
    

// throws Exception
procedure TStoreEmailInfo.init;
var
  contextConfigurationInterface_: IContextConfigurationInterface;
  emailServerConfigurationInterface_: IEmailServerConfigurationInterface;
begin
        contextConfigurationInterface_ := Self.storeFrontInterface.getContextConfigurationInterface();
        emailServerConfigurationInterface_ := contextConfigurationInterface_.getEmailServerConfigurationInterface();
        Self.setEmailServerConfigurationInterface(emailServerConfigurationInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

