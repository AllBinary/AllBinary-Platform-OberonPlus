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
// package views.admin.inventory.listings
unit InventoryViewFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SearchRequest, InventoryViewSearchInterface;

type
  {AB:TYPES}
  TInventoryViewFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(searchRequest_: TSearchRequest): IInventoryViewSearchInterface; static;
  end;

implementation
uses
  LogUtil, LicensingException, CommonStrings, InventorySearch;


{AB:CODE}
    

constructor TInventoryViewFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
class function TInventoryViewFactory.getInstance(searchRequest_: TSearchRequest): IInventoryViewSearchInterface;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit(TInventorySearch.Create(searchRequest_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('InventoryViewFactory'), 'getInstance(SearchRequest)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

