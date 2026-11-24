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
// package tags.transform.info
unit TransformInfoTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface, LogUtil, ModifyTag;

type
  {AB:TYPES}
  TTransformInfoTag = class(TModifyTag)
  public
    logUtil: TLogUtil;
    name: string;
    storeName: string;
    objectFile: string;
    anyType: string;
    objectConfigFile: string;
    objectConfig: string;
    templateFile: string;
    template: string;
    dataFile: string;
    data: string;
    type_: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface); overload;
        procedure setName(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        procedure setObjectFile(value: string); virtual;
        procedure setObject(value: string); virtual;
        procedure setTemplateFile(value: string); virtual;
        procedure setTemplate(value: string); virtual;
        procedure setDataFile(value: string); virtual;
        procedure setData(value: string); virtual;
        procedure setObjectConfigFile(value: string); virtual;
        procedure setObjectConfig(value: string); virtual;
        procedure setType(value: string); virtual;
        function getName: string; virtual;
        function getObjectFile: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  StoreFrontData, AbResponseHandler, OutputTypeData, TransformInfoData, TransformInfoRequestHelperFactory;


{AB:CODE}

procedure TTransformInfoTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TTransformInfoTag.Create;
begin
        inherited Create(TTransformInfoRequestHelperFactory.Create());
        InitFields;
end;
    

constructor TTransformInfoTag.Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
        inherited Create(tagHelperFactoryInterface_);
        InitFields;
end;
    

procedure TTransformInfoTag.setName(value: string);
begin
        Self.name := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().NAME, Self.name);
end;
    

procedure TTransformInfoTag.setStoreName(value: string);
begin
        Self.storeName := value;
        Self.getPropertiesHashMap().put(TStoreFrontData.getInstance().NAME, Self.storeName);
end;
    

procedure TTransformInfoTag.setObjectFile(value: string);
begin
        Self.objectFile := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().OBJECTFILENAME, Self.objectFile);
end;
    

procedure TTransformInfoTag.setObject(value: string);
begin
        Self.anyType := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().OBJECT_, Self.anyType);
end;
    

procedure TTransformInfoTag.setTemplateFile(value: string);
begin
        Self.templateFile := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().TEMPLATEFILENAME, Self.templateFile);
end;
    

procedure TTransformInfoTag.setTemplate(value: string);
begin
        Self.template := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().TEMPLATE, Self.template);
end;
    

procedure TTransformInfoTag.setDataFile(value: string);
begin
        Self.dataFile := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().DATAFILENAME, Self.dataFile);
end;
    

procedure TTransformInfoTag.setData(value: string);
begin
        Self.data := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().DATA, Self.data);
end;
    

procedure TTransformInfoTag.setObjectConfigFile(value: string);
begin
        Self.objectConfigFile := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().OBJECTCONFIGFILENAME, Self.objectConfigFile);
end;
    

procedure TTransformInfoTag.setObjectConfig(value: string);
begin
        Self.objectConfig := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().OBJECTCONFIG, Self.objectConfig);
end;
    

procedure TTransformInfoTag.setType(value: string);
begin
        Self.type_ := value;
        Self.getPropertiesHashMap().put(TOutputTypeData.getInstance().NAME, Self.type_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('TransformInfoTag type set: ' + Self.type_, TJava.Box(Self), 'setType');
        end;
end;
    

function TTransformInfoTag.getName: string;
begin
        Exit(Self.name);
end;
    

function TTransformInfoTag.getObjectFile: string;
begin
        Exit(Self.objectFile);
end;
    

// throws JspTagException
function TTransformInfoTag.doStartTag: Integer;
begin
        try
            Exit(inherited doStartTag());
        except
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

