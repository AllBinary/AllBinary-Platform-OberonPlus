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
unit MultipartRequestParamForwardTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CustomTagSupport;

type
  {AB:TYPES}
  TMultipartRequestParamForwardTag = class(TCustomTagSupport)
  public
    page: string;
    command: string;
    paramVector: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        procedure setPage(page: string); virtual;
        procedure setCommand(command: string); virtual;
        procedure setParamVector(paramVector: TBasicArrayList); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ParentInventoryTagHelper, AbTagData, BasicArrayListD, MultipartRequestParamForwardHelper, StdUtil, AbResponseHandler, LicensingException, HelperTag;


{AB:CODE}

procedure TMultipartRequestParamForwardTag.InitFields;
begin
  
  
  
end;

constructor TMultipartRequestParamForwardTag.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TMultipartRequestParamForwardTag.setPage(page: string);
begin
        Self.page := page;
end;
    

procedure TMultipartRequestParamForwardTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TMultipartRequestParamForwardTag.setParamVector(paramVector: TBasicArrayList);
begin
        Self.paramVector := paramVector;
end;
    

// throws JspTagException
function TMultipartRequestParamForwardTag.doStartTag: Integer;
var
  parentTag: THelperTag;
  hashMap_: TJavaHashMap<TObject, TObject>;
  multipartRequestParamForwardHelper_: TMultipartRequestParamForwardHelper;
begin
        try
            parentTag := THelperTag(TJava.ToObject(Self.getParent()));
            TParentInventoryTagHelper.getInstance().isValid(Self, parentTag);
            hashMap_ := TStdUtil.getInstance().createHashMap();
            hashMap_.put(TJava.Box(TAbTagData.PARENT), TJava.Box(parentTag));
            multipartRequestParamForwardHelper_ := TMultipartRequestParamForwardHelper.Create(parentTag, Self.page, Self.command, Self.paramVector, Self.pageContext);
            multipartRequestParamForwardHelper_.forward();
            Exit(TTag.SKIP_BODY);
        except
            on e: TLicensingException do begin
            TAbResponseHandler.sendJspTagLicensingRedirect(Self.pageContext, e);
            Exit(TTag.SKIP_BODY);
            end;
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(TTag.SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

