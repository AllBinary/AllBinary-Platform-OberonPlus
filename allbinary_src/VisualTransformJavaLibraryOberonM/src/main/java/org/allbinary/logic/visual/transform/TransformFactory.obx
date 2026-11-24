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
// package org.allbinary.logic.visual.transform
unit TransformFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInfoInterface, CommonStrings, TransformInterface;

type
  {AB:TYPES}
  TTransformFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instance: TTransformFactory;
    procedure InitFields;
        class function getInstance: TTransformFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; viewName: string; ownerTransformInfoInterface: ITransformInfoInterface): ITransformInterface; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInterface; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInterface; overload; virtual;
  end;

implementation
uses
  TransformInfoEntity, TransformInfoEntityBuilder, StringMaker, TransformInfoData, TransformInfoHttpFactory, TransformInfoHttpInterface, TransformInfoObjectFactory;


{AB:CODE}

procedure TTransformFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TTransformFactory.getInstance: TTransformFactory;
begin
        Exit(TTransformFactory.instance);
end;
    

constructor TTransformFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; viewName: string; ownerTransformInfoInterface: ITransformInfoInterface): ITransformInterface;
var
  ownerTransformInfoHttpInterface: ITransformInfoHttpInterface;
  transformInfoEntity_: TTransformInfoEntity;
  transformInfoInterface_: ITransformInfoInterface;
  anyType: TObject;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Creating Transform: ' + viewName, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            ownerTransformInfoHttpInterface := (TJava.ToObject(ownerTransformInfoInterface) as ITransformInfoHttpInterface);
            transformInfoEntity_ := TTransformInfoEntityBuilder.getInstance();
            transformInfoInterface_ := transformInfoEntity_.get(viewName, ownerTransformInfoHttpInterface.getPropertiesHashMap(), ownerTransformInfoHttpInterface.getPageContext());
            if (transformInfoInterface_) = (nil) then begin
                raise SysUtils.Exception.Create('No Such View In DB: ' + viewName);
            end;
            transformInfoInterface_.setChild();
            anyType := TJava.Box(TTransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Created Transform: ' + viewName, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            Exit((TJava.ToObject(anyType) as ITransformInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TTransformFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInterface;
var
  transformInfoData_: TTransformInfoData;
  transformInfoEntity_: TTransformInfoEntity;
  transformInfoInterface_: ITransformInfoInterface;
  anyType: TObject;
  stringBuffer: TStringMaker;
begin
        try
            transformInfoData_ := TTransformInfoData.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Creating Transform: ' + TJava.ToString(propertiesHashMap.get(TJava.Box(transformInfoData_.NAME))), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            transformInfoEntity_ := TTransformInfoEntityBuilder.getInstance();
            transformInfoInterface_ := transformInfoEntity_.get(TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(transformInfoData_.NAME)))), propertiesHashMap, pageContext_);
            if (transformInfoInterface_) <> (nil) then begin
                transformInfoInterface_.override_(propertiesHashMap);
            end else begin
                transformInfoInterface_ := (TJava.ToObject(TTransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext_)) as ITransformInfoInterface);
            end;
            anyType := TJava.Box(TTransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Created Transform: ' + TJava.ToString(propertiesHashMap.get(TJava.Box(transformInfoData_.NAME))), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            Exit((TJava.ToObject(anyType) as ITransformInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failed To Get Instance: ');
                stringBuffer.append(TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TTransformInfoData.getInstance().NAME)))));
                stringBuffer.append('->TransformFactory');
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TTransformFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInterface;
var
  anyType: TObject;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Creating Transform: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'getInstance(TransformInfoInterface)');
            end;
            anyType := TJava.Box(TTransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Created Transform: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'getInstance(TransformInfoInterface)');
            end;
            Exit((TJava.ToObject(anyType) as ITransformInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(TransformInfoInterface)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformFactory.instance := TTransformFactory.Create();
  {AB:END}

end.

