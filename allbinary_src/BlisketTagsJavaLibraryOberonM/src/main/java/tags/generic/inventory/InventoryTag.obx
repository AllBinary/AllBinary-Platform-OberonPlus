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
// package tags.generic.inventory
unit InventoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreValidationTransformTag;

type
  {AB:TYPES}
  TInventoryTag = class(TStoreValidationTransformTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        procedure search;
        procedure viewSummary;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException, InventoryHelperFactory;


{AB:CODE}

procedure TInventoryTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TInventoryTag.Create;
begin
        inherited Create();
        InitFields;
end;
    

// throws LicensingException
procedure TInventoryTag.search;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TInventoryHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('search', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Self.pageContext.getOut().print(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to search Inventory by keyword';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'search()', TJava.Box(e));
            end;
            try
                Self.pageContext.getOut().print(error + '<br>');
                Self.pageContext.getOut().print('Exception: ' + TJava.ToString(e) + '<br>');
            except
                on e2: SysUtils.Exception do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                    Self.logUtil.put('Exception in Exception Handling', TJava.Box(Self), 'search()', TJava.Box(e));
                end;
                end;
            end;
            end;
        end;
end;
    

// throws LicensingException
procedure TInventoryTag.viewSummary;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TInventoryHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('viewSummary', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Self.pageContext.getOut().print(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to View Summary';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'viewSummary()', TJava.Box(e));
            end;
            try
                Self.pageContext.getOut().print(error + '<br>');
                Self.pageContext.getOut().print('Exception: ' + TJava.ToString(e) + '<br>');
            except
                on e2: SysUtils.Exception do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                    Self.logUtil.put('Exception in Exception Handling', TJava.Box(Self), 'viewSummary())', TJava.Box(e));
                end;
                end;
            end;
            end;
        end;
end;
    

// throws JspTagException
function TInventoryTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.SEARCH)) = (0) then begin
                    Self.setName('Basic Search Inventory View');
                    Self.setObjectFile('views.generic.inventory.AutoSearchValidationInventoryView');
                    Self.search();
                    Exit(EVAL_BODY_INCLUDE);
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEWSUMMARY)) = (0) then begin
                    Self.setName('Basic Inventory View');
                    Self.setObjectFile('views.generic.inventory.AutoValidationInventoryView');
                    Self.viewSummary();
                    Exit(EVAL_BODY_INCLUDE);
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    Self.setName('Basic Inventory View');
                    Self.setObjectFile('views.generic.inventory.AutoValidationInventoryView');
                    Exit(inherited doStartTag());
                end else begin
                    raise SysUtils.Exception.Create('No Such View Command: ' + TJava.ToString(Self.getCommand()));
                end;
            end;
            raise SysUtils.Exception.Create('Command Null');
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

