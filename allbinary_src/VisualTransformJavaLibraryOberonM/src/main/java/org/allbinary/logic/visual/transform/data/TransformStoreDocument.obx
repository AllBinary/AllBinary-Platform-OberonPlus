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
// package org.allbinary.logic.visual.transform.data
unit TransformStoreDocument;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSession, LogUtil, SearchRequest, TransformHttpRequestDocument;

type
  {AB:TYPES}
  TTransformStoreDocument = class(TTransformHttpRequestDocument)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(pageContext_: TPageContext; weblisketSession_: TWeblisketSession); overload;
        constructor Create(searchRequest_: TSearchRequest); overload;
  end;

implementation
uses
  StoreFrontViewFactory, RequestParams;


{AB:CODE}

procedure TTransformStoreDocument.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TTransformStoreDocument.Create(pageContext_: TPageContext; weblisketSession_: TWeblisketSession);
var
  storeName: string;
begin
        inherited Create(pageContext_, weblisketSession_);
        InitFields;
        try
            storeName := weblisketSession_.getStoreName();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Using Session StoreName: ' + storeName, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
            Self.getBaseNode().appendChild(TStoreFrontViewFactory.getInstance(storeName).toXmlNode(Self.getDoc()));
            Self.getBaseNode().appendChild(TRequestParams.Create(THttpServletRequest(TJava.ToObject(pageContext_.getRequest()))).toXmlNode(Self.getDoc()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

constructor TTransformStoreDocument.Create(searchRequest_: TSearchRequest);
begin
        inherited Create(searchRequest_);
        InitFields;
        try
            Self.getBaseNode().appendChild(TStoreFrontViewFactory.getInstance(searchRequest_.getStoreFront().getName()).toXmlNode(Self.getDoc()));
            Self.getBaseNode().appendChild(searchRequest_.getParams().getParamsNode(Self.getDoc()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

