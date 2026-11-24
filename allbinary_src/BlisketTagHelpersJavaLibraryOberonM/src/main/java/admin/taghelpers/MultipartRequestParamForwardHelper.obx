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
unit MultipartRequestParamForwardHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, RequestMapInterface, LogUtil, HelperTag;

type
  {AB:TYPES}
  TMultipartRequestParamForwardHelper = class(TObject)
  public
    logUtil: TLogUtil;
    pageContext: TPageContext;
    requestMapInterface: IRequestMapInterface;
    page: string;
    command: string;
    paramVector: TBasicArrayList;
    procedure InitFields;
        constructor Create(parentHelperTag: THelperTag; page: string; command: string; paramVector: TBasicArrayList; pageContext_: TPageContext);
        procedure forward; virtual;
        function getParams: string;
        function shouldForward: Boolean;
  end;

implementation
uses
  InventoryItemViewParentTagHelper, BasicArrayListD, GLOBALS2, StringMaker, CommonSeps, CommonStrings;


{AB:CODE}

procedure TMultipartRequestParamForwardHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
end;
    

constructor TMultipartRequestParamForwardHelper.Create(parentHelperTag: THelperTag; page: string; command: string; paramVector: TBasicArrayList; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.pageContext := pageContext_;
        Self.page := page;
        Self.command := command;
        Self.paramVector := paramVector;
        Self.requestMapInterface := TInventoryItemViewParentTagHelper.getInstance().getRequestMapInterface(parentHelperTag);
end;
    

// throws Exception
procedure TMultipartRequestParamForwardHelper.forward;
var
  params: string;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
begin
        try
            if Self.shouldForward() then begin
                params := Self.getParams();
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(Self.page);
                stringBuffer.append(params);
                Self.pageContext.forward(stringBuffer.toString());
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'forward()', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TMultipartRequestParamForwardHelper.getParams: string;
var
  commonSeps_: TCommonSeps;
  AMP: string;
  QUESTION: string;
  EQUALS: string;
  hashMap_: TJavaHashMap<TObject, TObject>;
  stringBuffer: TStringMaker;
  size: Integer;
  key: string;
  value: string;
  index: Integer;
begin
        commonSeps_ := TCommonSeps.getInstance();
        AMP := commonSeps_.AMPERSAND;
        QUESTION := commonSeps_.QUESTION;
        EQUALS := commonSeps_.EQUALS;
        hashMap_ := Self.requestMapInterface.getRequestHashMap();
        stringBuffer := TStringMaker.Create();
        size := Self.paramVector.size();
        for index := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(Self.paramVector.get(index)));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(key))));
            if (index) <> (0) then begin
                stringBuffer.append(AMP);
            end else begin
                stringBuffer.append(QUESTION);
            end;
            stringBuffer.append(key);
            stringBuffer.append(EQUALS);
            stringBuffer.append(value);
        end;
        Exit(stringBuffer.toString());
end;
    

function TMultipartRequestParamForwardHelper.shouldForward: Boolean;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  requestCommand: string;
begin
        hashMap_ := Self.requestMapInterface.getRequestHashMap();
        requestCommand := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(GLOBALS2.ADMINCOMMAND))));
        if ((Self.command = '')) or (((not ((requestCommand = ''))) and ((CompareStr(Self.command, requestCommand)) = (0)))) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

