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
// package views.business.context.modules.storefront.customizer.template
unit InsertCustomizerValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  // Sets Template Type
  TInsertCustomizerValidationView = class(THttpStoreComponentView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    viewName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, TransformInfoEntityBuilder, RequestParams, StringMaker, TransformFactory, TransformInterface, GeneratorTransformInfoData, TransformInfo, TransformInfoData, TransformInfosData, CommonSeps, InsertTemplateCustomizerTransformInfoObjectConfig, NoTemplateTransformInfoObjectConfig;


{AB:CODE}

procedure TInsertCustomizerValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TInsertCustomizerValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInsertCustomizerValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  requestHashMap: TJavaHashMap<TObject, TObject>;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        requestHashMap := TRequestParams.Create(Self.getPageContext()).toHashMap();
        Self.viewName := TJava.UnboxString(TJava.ToObject(requestHashMap.get(TJava.Box(TTransformInfoData.getInstance().NAME))));
end;
    

function TInsertCustomizerValidationView.isValid: Boolean;
var
  isValid: Boolean;
  objectConfig: TNoTemplateTransformInfoObjectConfig;
  componentVector: TBasicArrayList;
  size: Integer;
  stringBuffer: TStringMaker;
  transformInfo_: TTransformInfo;
  transformInfoName: string;
  componentInterface: ITransformInterface;
  templateViewObjectConfig: TInsertTemplateCustomizerTransformInfoObjectConfig;
  storeName: string;
  endIndex: Integer;
  storePrepend: string;
  viewNamePostfix: string;
  newViewNameStringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
  transformInfosData_: TTransformInfosData;
  newViewName: string;
  updatedTransformInfoHashMap: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Started Validation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            isValid := True;
            if (Self.viewName = '') then begin
                isValid := False;
            end else begin
                objectConfig := TNoTemplateTransformInfoObjectConfig.Create(Self.getTransformInfoInterface(), Self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc());
                componentVector := objectConfig.getGroupTransforms();
                size := componentVector.size();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Pointing ');
                    stringBuffer.appendint(componentVector.size());
                    stringBuffer.append(' Components');
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                for index := 0 to size - 1 do begin
                    transformInfo_ := TTransformInfo(TJava.ToObject(componentVector.get(index)));
                    transformInfoName := transformInfo_.getName();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF('Setting Template Component with ViewName: ' + transformInfoName, TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    componentInterface := TTransformFactory.getInstance().getInstance(Self.abeClientInformation, transformInfoName, Self.getTransformInfoInterface());
                    templateViewObjectConfig := TInsertTemplateCustomizerTransformInfoObjectConfig.Create(componentInterface.getTransformInfoInterface(), componentInterface.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc());
                    storeName := Self.getTransformInfoInterface().getStoreName();
                    endIndex := ((Pos(TJava.ToString(storeName), Self.viewName) - 1)) + (System.Length(storeName));
                    storePrepend := Copy(Self.viewName, (0) + 1, (endIndex) - (0));
                    viewNamePostfix := Copy(Self.viewName, (endIndex) + 1, (System.Length(Self.viewName)) - (endIndex));
                    newViewNameStringBuffer := TStringMaker.Create();
                    newViewNameStringBuffer.append(storePrepend);
                    commonSeps_ := TCommonSeps.getInstance();
                    transformInfosData_ := TTransformInfosData.getInstance();
                    if ((Pos(TJava.ToString(transformInfosData_.SMALL_PREVIEW), transformInfoName) - 1)) >= (0) then begin
                        newViewNameStringBuffer.append(commonSeps_.SPACE);
                        newViewNameStringBuffer.append(transformInfosData_.SMALL_PREVIEW);
                    end else if ((Pos(TJava.ToString(transformInfosData_.PREVIEW), transformInfoName) - 1)) >= (0) then begin
                        newViewNameStringBuffer.append(commonSeps_.SPACE);
                        newViewNameStringBuffer.append(transformInfosData_.PREVIEW);
                    end;
                    newViewNameStringBuffer.append(commonSeps_.SPACE);
                    newViewNameStringBuffer.append(viewNamePostfix);
                    if ((Pos(TJava.ToString(TGeneratorTransformInfoData.NAME), transformInfoName) - 1)) >= (0) then begin
                        newViewNameStringBuffer.append(commonSeps_.SPACE);
                        newViewNameStringBuffer.append(TGeneratorTransformInfoData.NAME);
                    end;
                    newViewName := newViewNameStringBuffer.toString();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Template Component: ');
                        stringBuffer.append(transformInfoName);
                        stringBuffer.append(''#10' Now Pointing To View Name: ');
                        stringBuffer.append(newViewName);
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    templateViewObjectConfig.set_(newViewName);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Template Component: ');
                        stringBuffer.append(transformInfoName);
                        stringBuffer.append(''#10' with ObjectConfig: ');
                        stringBuffer.append(templateViewObjectConfig.toString());
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    componentInterface.getTransformInfoInterface().setObjectConfigInterface(templateViewObjectConfig);
                    updatedTransformInfoHashMap := componentInterface.getTransformInfoInterface().toHashMap();
                    TTransformInfoEntityBuilder.getInstance().update(updatedTransformInfoHashMap);
                end;
            end;
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInsertCustomizerValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Error: Template Name Is Empty.');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

function TInsertCustomizerValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertCustomizerValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TInsertCustomizerValidationView.view: string;
begin
        Exit(Self.views.ValidationOnlyTempUtil.getInstance().view(Self));
end;
    

// throws Exception
function TInsertCustomizerValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

