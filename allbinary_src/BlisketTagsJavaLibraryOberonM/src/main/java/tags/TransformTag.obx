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
// package tags
unit TransformTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface, LogUtil, TransformInfoTag;

type
  {AB:TYPES}
  TTransformTag = class(TTransformInfoTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface); overload;
        function view: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, StringMaker, LicensingException, ViewHelperFactory;


{AB:CODE}

procedure TTransformTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TTransformTag.Create;
begin
        inherited Create(TViewHelperFactory.Create());
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TTransformTag.Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
        inherited Create(tagHelperFactoryInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TTransformTag.view: string;
var
  result_: string;
begin
        try
            result_ := TJava.UnboxString(TJava.ToObject(TJava.ToObject(Self.getHelper()).ClassType.getMethod('view', nil).invoke(Self.getHelper(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws JspTagException
function TTransformTag.doStartTag: Integer;
var
  stringBuffer: TStringMaker;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Creating with: '#10'' + Self.getPropertiesHashMap().toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('ViewTag Start For: ');
                stringBuffer.append(Self.getName());
                stringBuffer.append(''#10'ViewFile: ');
                stringBuffer.append(Self.getObjectFile());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Self.setHelper();
            Self.pageContext.getOut().print(Self.view());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Tag End', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Exit(SKIP_BODY);
        except
            on e: TLicensingException do begin
            TAbResponseHandler.sendJspTagLicensingRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
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

