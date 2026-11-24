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
// package views.business.context
unit OverrideObjectConfigRootContextView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TOverrideObjectConfigRootContextView = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
  end;

implementation
uses
  XmlDocumentHelper, StringMaker, TransformFactory, TransformInterface, GeneratorTransformInfoData, RootTransformInfoData, TransformInfoHttp, TransformInfoObjectConfigAndManipulatorFactory, TransformInfoObjectConfigInterface, TransformTemplateInterface, CommonSeps, Document;


{AB:CODE}

procedure TOverrideObjectConfigRootContextView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TOverrideObjectConfigRootContextView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'OverrideObjectRootContextView()');
        end;
end;
    

// throws Exception
function TOverrideObjectConfigRootContextView.view: string;
var
  rootTransformInfoInterface: ITransformInfoInterface;
  stringBuffer: TStringMaker;
  nameStart: string;
  overrideObjectConfigDocument: TDocument;
  transformFactory_: TTransformFactory;
  rootComponentInterface: ITransformInterface;
  transformTemplateInterface_: ITransformTemplateInterface;
  componentInterface: ITransformInterface;
  transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('View Name: ' + Self.getTransformInfoInterface().getName(), TJava.Box(Self), 'view()');
            end;
            rootTransformInfoInterface := (TJava.ToObject(TTransformInfoHttp.Create(TTransformInfoHttp(TJava.ToObject(Self.getTransformInfoInterface())))) as ITransformInfoInterface);
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.getTransformInfoInterface().getStoreName());
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            nameStart := stringBuffer.toString();
            if (Self.getTransformInfoInterface().getName().indexOf(TGeneratorTransformInfoData.NAME)) > (0) then begin
                rootTransformInfoInterface.setName(nameStart + TJava.ToString(TGeneratorTransformInfoData.NAME));
            end else if (Self.getTransformInfoInterface().getName().indexOf(TRootTransformInfoData.NAME)) > (0) then begin
                rootTransformInfoInterface.setName(nameStart + TJava.ToString(TRootTransformInfoData.NAME));
            end else begin
                raise SysUtils.Exception.Create('Override Currently Not Supported');
            end;
            overrideObjectConfigDocument := Self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Retrieved OverrideObjectConfig: ' + TXmlDocumentHelper.toString(overrideObjectConfigDocument), TJava.Box(Self), 'view()');
            end;
            transformFactory_ := TTransformFactory.getInstance();
            rootComponentInterface := transformFactory_.getInstance(Self.abeClientInformation, rootTransformInfoInterface.getName(), rootTransformInfoInterface);
            transformTemplateInterface_ := (TJava.ToObject(rootComponentInterface) as ITransformTemplateInterface);
            componentInterface := transformFactory_.getInstance(Self.abeClientInformation, transformTemplateInterface_.getName(), rootComponentInterface.getTransformInfoInterface());
            transformInfoObjectConfigInterface_ := TTransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(Self.abeClientInformation, componentInterface.getTransformInfoInterface(), overrideObjectConfigDocument);
            componentInterface.getTransformInfoInterface().setObjectConfigInterface(transformInfoObjectConfigInterface_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Set OverrideObjectConfig: ' + componentInterface.getTransformInfoInterface().getObjectConfigInterface().toString(), TJava.Box(Self), 'view()');
            end;
            Exit(componentInterface.view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

