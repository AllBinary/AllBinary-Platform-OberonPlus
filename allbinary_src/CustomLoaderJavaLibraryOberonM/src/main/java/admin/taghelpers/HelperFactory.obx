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
// package admin.taghelpers
unit HelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface;

type
  {AB:TYPES}
  THelperFactory = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject; overload; static;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; overload; static;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; specialhashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject; overload; static;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string): TObject; overload; static;
  end;

implementation
uses
  AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure THelperFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor THelperFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException
class function THelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest): TObject;
var
  logUtil_: TLogUtil;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  abeFactory_: TAbeFactory;
  anyType: TObject;
  error: string;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            params := TJava.NewArray<TObject>(2);
            classes := TJava.NewArray<TClass>(2);
            abeFactory_ := TAbeFactory.getInstance();
            classes[0] := TJava.ToObject(hashMap_).ClassType;
            classes[1] := abeFactory_.getClass(abeClientInformation, 'javax.servlet.http.HttpServletRequest');
            params[0] := TJava.Box(hashMap_);
            params[1] := TJava.Box(httpServletRequest_);
            anyType := TJava.Box(abeFactory_.getInstance(abeClientInformation, className, classes, params));
            Exit(TJava.Box(anyType));
        except
            on e: TLicensingException do begin
            error := 'Failed To Get Instance Args: HashMap=' + hashMap_.toString() + ' HttpServletRequest=' + TJava.ToString(httpServletRequest_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                logUtil_.put(error, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed To Get Instance';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                logUtil_.put(error, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

// throws LicensingException
class function THelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
var
  logUtil_: TLogUtil;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  abeFactory_: TAbeFactory;
  anyType: TObject;
  error: string;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            params := TJava.NewArray<TObject>(2);
            classes := TJava.NewArray<TClass>(2);
            abeFactory_ := TAbeFactory.getInstance();
            classes[0] := TJava.ToObject(hashMap_).ClassType;
            classes[1] := abeFactory_.getClass(abeClientInformation, 'javax.servlet.jsp.PageContext');
            params[0] := TJava.Box(hashMap_);
            params[1] := TJava.Box(pageContext_);
            anyType := TJava.Box(abeFactory_.getInstance(abeClientInformation, className, classes, params));
            Exit(TJava.Box(anyType));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                error := 'Failed To Get Instance Args: HashMap=' + hashMap_.toString() + ' PageContext=' + TJava.ToString(pageContext_);
                logUtil_.put(error, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

// throws LicensingException
class function THelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string; hashMap_: TJavaHashMap<TObject, TObject>; specialhashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): TObject;
var
  logUtil_: TLogUtil;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  abeFactory_: TAbeFactory;
  anyType: TObject;
  error: string;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            params := TJava.NewArray<TObject>(3);
            classes := TJava.NewArray<TClass>(3);
            abeFactory_ := TAbeFactory.getInstance();
            classes[0] := TJava.ToObject(hashMap_).ClassType;
            classes[1] := TJava.ToObject(specialhashMap).ClassType;
            classes[2] := abeFactory_.getClass(abeClientInformation, 'javax.servlet.jsp.PageContext');
            params[0] := TJava.Box(hashMap_);
            params[1] := TJava.Box(specialhashMap);
            params[2] := TJava.Box(pageContext_);
            anyType := TJava.Box(abeFactory_.getInstance(abeClientInformation, className, classes, params));
            Exit(TJava.Box(anyType));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                error := 'Failed To Get Instance Args: HashMap=' + hashMap_.toString() + ' PageContext=' + TJava.ToString(pageContext_);
                logUtil_.put(error, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

// throws LicensingException
class function THelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; factoryName: string; className: string): TObject;
var
  logUtil_: TLogUtil;
  anyType: TObject;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            anyType := TJava.Box(TAbeFactory.getInstance().getInstance(abeClientInformation, className));
            Exit(TJava.Box(anyType));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(factoryName + '->HelperFactory'), 'getInstance(String, String, HashMap, PageContext)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

