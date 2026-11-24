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
unit CategoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TCategoryTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    xsl: string;
    procedure InitFields;
        constructor Create;
        procedure setXsl(value: string); virtual;
        function viewCategory: string;
        function viewCategories: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  CategoryHelperFactory, CategoryRequestHelperFactory, CategoryData, AbResponseHandler, LicensingException, TransformInfoData;


{AB:CODE}

procedure TCategoryTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TCategoryTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TCategoryHelperFactory.Create());
        Self.setTagRequestHelperFactory(TCategoryRequestHelperFactory.Create());
end;
    

procedure TCategoryTag.setXsl(value: string);
begin
        Self.xsl := value;
end;
    

// throws LicensingException
function TCategoryTag.viewCategory: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TCategoryRequestHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('viewCategory', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to view a Category';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewCategory()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TCategoryTag.viewCategories: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TCategoryRequestHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('viewCategories', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to view a Categories';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewCategories()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TCategoryTag.doStartTag: Integer;
var
  output: string;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().TEMPLATEFILENAME, Self.xsl);
                    if (Self.getCommand().compareTo(TCategoryData.getInstance().VIEW)) = (0) then begin
                        output := Self.viewCategory();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output);
                        end;
                    end else if (Self.getCommand().compareTo(TCategoryData.getInstance().VIEW)) = (0) then begin
                        output := Self.viewCategories();
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

