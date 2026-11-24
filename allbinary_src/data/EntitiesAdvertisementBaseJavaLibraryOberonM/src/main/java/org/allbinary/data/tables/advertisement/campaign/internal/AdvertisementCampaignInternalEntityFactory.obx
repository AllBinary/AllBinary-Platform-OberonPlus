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
// package org.allbinary.data.tables.advertisement.campaign.internal
unit AdvertisementCampaignInternalEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvertisementCampaignInternalEntityInterface;

type
  {AB:TYPES}
  TAdvertisementCampaignInternalEntityFactory = class(TObject)
  public
    class var CLASSNAME: string;
        constructor Create;
        class function getInstance: IAdvertisementCampaignInternalEntityInterface; static;
  end;

implementation
uses
  AdvertisementCampaignInternalEntity, LogUtil, CommonStrings;


{AB:CODE}
    

constructor TAdvertisementCampaignInternalEntityFactory.Create;
begin
    inherited Create;
end;
    

class function TAdvertisementCampaignInternalEntityFactory.getInstance: IAdvertisementCampaignInternalEntityInterface;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit((TJava.ToObject(TAdvertisementCampaignInternalEntity.Create()) as IAdvertisementCampaignInternalEntityInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('AdvertisementCampaignEntityFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAdvertisementCampaignInternalEntityFactory.CLASSNAME := 'org.allbinary.data.tables.AdvertisementCampaignEntity';
  {AB:END}

end.

