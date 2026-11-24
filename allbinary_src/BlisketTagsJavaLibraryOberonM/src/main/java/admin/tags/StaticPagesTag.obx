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
// package admin.tags
unit StaticPagesTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TStaticPagesTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    xslFile: string;
    procedure InitFields;
        constructor Create;
        procedure setXsl(value: string); virtual;
        function generateStaticPages: string; virtual;
        function makePublic: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  StaticPagesHelperFactory, StaticPagesRequestHelperFactory, AbResponseHandler, SearchData, LicensingException, TransformInfoData;


{AB:CODE}

procedure TStaticPagesTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TStaticPagesTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TStaticPagesHelperFactory.Create());
        Self.setTagRequestHelperFactory(TStaticPagesRequestHelperFactory.Create());
end;
    

procedure TStaticPagesTag.setXsl(value: string);
begin
        Self.xslFile := value;
end;
    

// throws LicensingException
function TStaticPagesTag.generateStaticPages: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TStaticPagesRequestHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('generateStaticPages', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to generate staticpages table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateStaticPages()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TStaticPagesTag.makePublic: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TStaticPagesRequestHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('makePublic', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to makePublic';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'makePublic()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TStaticPagesTag.doStartTag: Integer;
var
  output: string;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    if (Self.getCommand().compareTo(TSearchData.GENERATESTATICPAGES)) = (0) then begin
                        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().TEMPLATEFILENAME, Self.xslFile);
                        output := Self.generateStaticPages();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output);
                        end;
                    end else if (Self.getCommand().compareTo(TSearchData.MAKEPUBLIC)) = (0) then begin
                        output := Self.makePublic();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output);
                        end;
                    end else begin
                        Exit(inherited doStartTag());
                    end;
                end;
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

