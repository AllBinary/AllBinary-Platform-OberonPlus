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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoHttpFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfoHttpFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface; static;
  end;

implementation
uses
  TransformInfoHttpContext, TransformInfoHttpStore, StoreFrontFactory, StoreFrontInterface, WeblisketSession, LogUtil, CommonStrings;


{AB:CODE}
    

constructor TTransformInfoHttpFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TTransformInfoHttpFactory.getInstance(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface;
var
  logUtil_: TLogUtil;
  weblisketSession_: TWeblisketSession;
  storeFrontInterface_: IStoreFrontInterface;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            weblisketSession_ := TWeblisketSession.Create(propertiesHashMap, pageContext_);
            if not ((weblisketSession_.getStoreName() = '')) then begin
                storeFrontInterface_ := TStoreFrontFactory.getInstance(weblisketSession_.getStoreName());
                if (storeFrontInterface_) <> (nil) then begin
                    Exit((TJava.ToObject(TTransformInfoHttpStore.Create(storeFrontInterface_, propertiesHashMap, pageContext_)) as ITransformInfoInterface));
                end else begin
                    raise SysUtils.Exception.Create('No StoreFront with: ' + TJava.ToString(weblisketSession_.getStoreName()));
                end;
            end else begin
                Exit((TJava.ToObject(TTransformInfoHttpContext.Create(propertiesHashMap, pageContext_)) as ITransformInfoInterface));
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('TransformInfoFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

