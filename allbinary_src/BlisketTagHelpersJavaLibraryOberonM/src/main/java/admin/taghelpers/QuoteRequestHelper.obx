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
unit QuoteRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, QuoteRequest, WeblisketSession, LogUtil, ModifyTable;

type
  {AB:TYPES}
  // TWB - Am I missing the correct Quote Request? Probably not
  TQuoteRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    quoteRequest: TQuoteRequest;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function insert: string; virtual;
        function update: string; virtual;
        function delete_: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontData, StoreFrontFactory, QuoteRequestEntityFactory;


{AB:CODE}

procedure TQuoteRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TQuoteRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  request: THttpServletRequest;
  storeName: string;
begin
    inherited Create;
    InitFields;
        request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.quoteRequest := TQuoteRequest.Create(Self.weblisketSession.getUserName(), request);
        storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end;
end;
    

function TQuoteRequestHelper.isValid: Boolean;
begin
        Exit(Self.quoteRequest.isValid());
end;
    

function TQuoteRequestHelper.validationInfo: string;
begin
        Exit(Self.quoteRequest.validationInfo());
end;
    

function TQuoteRequestHelper.insert: string;
var
  values: TBasicArrayList;
  success: string;
  error: string;
begin
        try
            values := Self.quoteRequest.toVector();
            TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().insert(values);
            success := 'New QuoteRequest Successfully added to the QuoteRequest Table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'add()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add QuoteRequest';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'add()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TQuoteRequestHelper.update: string;
var
  values: TJavaHashMap<TObject, TObject>;
  success: string;
  error: string;
begin
        try
            values := Self.quoteRequest.toHashMap();
            TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().update(Self.quoteRequest.getUserName(), values);
            success := 'New QuoteRequest Successfully updated';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update QuoteRequest';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TQuoteRequestHelper.delete_: string;
begin
        Exit(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

