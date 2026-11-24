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
// package views.admin.orderhistory
unit DateRangeOrderHistoryView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TDateRangeOrderHistoryView = class(THttpStoreComponentView, IValidationComponentInterface, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    VIEWALLORDERS: string;
    VIEWORDERSINLASTHOUR: string;
    VIEWORDERSINLASTDAY: string;
    VIEWORDERSINLASTWEEK: string;
    VIEWORDERSINLAST30DAYS: string;
    request: THttpServletRequest;
    shipped: string;
    partiallyShipped: string;
    processing: string;
    preprocessing: string;
    cancelled: string;
    dateType: string;
    toDate: string;
    fromDate: string;
    fromYear: string;
    fromMonth: string;
    fromDay: string;
    fromHour: string;
    toYear: string;
    toMonth: string;
    toDay: string;
    toHour: string;
    command: string;
    ON_: string;
    MAXLEN: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure getFormData;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, OrderData, OrderHistory, OrderHistoryData, OrderHistoryEntityFactory, ModDomHelper, GLOBALS2, StringMaker, StringUtil, TimeUtil;


{AB:CODE}

procedure TDateRangeOrderHistoryView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.VIEWALLORDERS := 'View All';
  Self.VIEWORDERSINLASTHOUR := 'Last Hour';
  Self.VIEWORDERSINLASTDAY := 'Last Day';
  Self.VIEWORDERSINLASTWEEK := 'Last Week';
  Self.VIEWORDERSINLAST30DAYS := '30 Days';
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  Self.ON_ := 'on';
  Self.MAXLEN := 15;
end;

function TDateRangeOrderHistoryView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDateRangeOrderHistoryView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
        Self.getFormData();
end;
    

procedure TDateRangeOrderHistoryView.getFormData;
begin
        Self.dateType := Self.request.getParameter(TOrderHistoryData.DATETYPE);
        Self.preprocessing := Self.request.getParameter(TOrderHistoryData.PREPROCESSINGNAME);
        Self.shipped := Self.request.getParameter(TOrderHistoryData.SHIPPEDNAME);
        Self.partiallyShipped := Self.request.getParameter(TOrderHistoryData.PARTIALLYSHIPPEDNAME);
        Self.processing := Self.request.getParameter(TOrderHistoryData.PROCESSINGNAME);
        Self.cancelled := Self.request.getParameter(TOrderHistoryData.CANCELLEDNAME);
        Self.fromYear := Self.request.getParameter(TOrderHistoryData.FROMYEAR);
        Self.fromMonth := Self.request.getParameter(TOrderHistoryData.FROMMONTH);
        Self.fromDay := Self.request.getParameter(TOrderHistoryData.FROMDAY);
        Self.fromHour := Self.request.getParameter(TOrderHistoryData.FROMHOUR);
        Self.toYear := Self.request.getParameter(TOrderHistoryData.TOYEAR);
        Self.toMonth := Self.request.getParameter(TOrderHistoryData.TOMONTH);
        Self.toDay := Self.request.getParameter(TOrderHistoryData.TODAY);
        Self.toHour := Self.request.getParameter(TOrderHistoryData.TOHOUR);
        Self.command := Self.request.getParameter(GLOBALS2.ADMINCOMMAND);
end;
    

procedure TDateRangeOrderHistoryView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TDateRangeOrderHistoryView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TDateRangeOrderHistoryView.toXmlNode(document_: TDocument): TNode;
var
  stringBuffer: TStringMaker;
  node_: TNode;
  orderHistoryVector: TBasicArrayList;
  size: Integer;
  orderHistory_: TOrderHistory;
  index: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Attempt to View orders in (fromDate=');
                stringBuffer.append(Self.fromDate);
                stringBuffer.append(',toDate=');
                stringBuffer.append(Self.toDate);
                stringBuffer.append(') and status');
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'view');
            end;
            node_ := document_.createElement(TOrderData.ORDERS);
            if ((Self.preprocessing) <> ('')) and ((CompareStr(Self.preprocessing, Self.ON_)) = (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Adding Preprocessing Orders', TJava.Box(Self), 'toXmlNode');
                end;
                orderHistoryVector := TOrderHistoryEntityFactory.getInstance().getOrders(TOrderHistoryData.PREPROCESSING, Self.fromDate, Self.toDate);
                size := orderHistoryVector.size();
                for index := 0 to size - 1 do begin
                    orderHistory_ := TOrderHistory(TJava.ToObject(orderHistoryVector.get(index)));
                    node_.appendChild(orderHistory_.toXmlNode(document_));
                end;
            end;
            if ((Self.shipped) <> ('')) and ((CompareStr(Self.shipped, Self.ON_)) = (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Adding Shipped Orders', TJava.Box(Self), 'toXmlNode');
                end;
                orderHistoryVector := TOrderHistoryEntityFactory.getInstance().getOrders(TOrderHistoryData.SHIPPED, Self.fromDate, Self.toDate);
                size := orderHistoryVector.size();
                for index := 0 to size - 1 do begin
                    orderHistory_ := TOrderHistory(TJava.ToObject(orderHistoryVector.get(index)));
                    node_.appendChild(orderHistory_.toXmlNode(document_));
                end;
            end;
            if ((Self.partiallyShipped) <> ('')) and ((CompareStr(Self.partiallyShipped, Self.ON_)) = (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Adding Partially Shipped Orders', TJava.Box(Self), 'toDomNode');
                end;
                orderHistoryVector := TOrderHistoryEntityFactory.getInstance().getOrders(TOrderHistoryData.PARTIALLYSHIPPED, Self.fromDate, Self.toDate);
                size := orderHistoryVector.size();
                for index := 0 to size - 1 do begin
                    orderHistory_ := TOrderHistory(TJava.ToObject(orderHistoryVector.get(index)));
                    node_.appendChild(orderHistory_.toXmlNode(document_));
                end;
            end;
            if ((Self.processing) <> ('')) and ((CompareStr(Self.processing, Self.ON_)) = (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Adding Processing Orders', TJava.Box(Self), 'toXmlNode');
                end;
                orderHistoryVector := TOrderHistoryEntityFactory.getInstance().getOrders(TOrderHistoryData.PROCESSING, Self.fromDate, Self.toDate);
                size := orderHistoryVector.size();
                for index := 0 to size - 1 do begin
                    orderHistory_ := TOrderHistory(TJava.ToObject(orderHistoryVector.get(index)));
                    node_.appendChild(orderHistory_.toXmlNode(document_));
                end;
            end;
            if ((Self.cancelled) <> ('')) and ((CompareStr(Self.cancelled, Self.ON_)) = (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Adding Cancelled Orders', TJava.Box(Self), 'view');
                end;
                orderHistoryVector := TOrderHistoryEntityFactory.getInstance().getOrders(TOrderHistoryData.CANCELLED, Self.fromDate, Self.toDate);
                size := orderHistoryVector.size();
                for index := 0 to size - 1 do begin
                    orderHistory_ := TOrderHistory(TJava.ToObject(orderHistoryVector.get(index)));
                    node_.appendChild(orderHistory_.toXmlNode(document_));
                end;
            end;
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PREPROCESSINGNAME, TOrderHistoryData.PREPROCESSING));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PROCESSINGNAME, TOrderHistoryData.PROCESSING));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.CANCELLEDNAME, TOrderHistoryData.CANCELLED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PARTIALLYSHIPPEDNAME, TOrderHistoryData.PARTIALLYSHIPPED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.SHIPPEDNAME, TOrderHistoryData.SHIPPED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, GLOBALS2.VIEWNAME, GLOBALS2.VIEW));
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TDateRangeOrderHistoryView.isValid: Boolean;
var
  isValid: Boolean;
  calendar: TCalendar;
  currentTime: Int64;
  rangeDate: string;
  thirtyDays: Int64;
  oneWeek: Int64;
  oneDay: Int64;
  oneHour: Int64;
  rangeDateLong: Int64;
  time: string;
  stringBuffer: TStringMaker;
begin
        try
            isValid := True;
            if ((Self.dateType) = ('')) or ((((CompareStr(Self.dateType, TOrderHistoryData.TYPELONG)) <> (0)) and ((CompareStr(Self.dateType, TOrderHistoryData.TYPECAESAR)) <> (0)))) then begin
                isValid := False;
            end;
            if (Self.dateType) <> ('') then begin
                if (CompareStr(Self.dateType, TOrderHistoryData.TYPELONG)) = (0) then begin
                    calendar := TCalendar.getInstance();
                    currentTime := calendar.getTimeInMillis();
                    rangeDate := TStringUtil.getInstance().EMPTY_STRING;
                    if (CompareStr(Self.command, Self.VIEWORDERSINLASTHOUR)) = (0) then begin
                        oneHour := ((60) * (60)) * (1000);
                        rangeDate := oneHour.toString();
                    end else if (CompareStr(Self.command, Self.VIEWORDERSINLASTDAY)) = (0) then begin
                        oneDay := (((24) * (60)) * (60)) * (1000);
                        rangeDate := oneDay.toString();
                    end else if (CompareStr(Self.command, Self.VIEWORDERSINLASTWEEK)) = (0) then begin
                        oneWeek := ((((7) * (24)) * (60)) * (60)) * (1000);
                        rangeDate := oneWeek.toString();
                    end else if (CompareStr(Self.command, Self.VIEWORDERSINLAST30DAYS)) = (0) then begin
                        thirtyDays := ((((30) * (24)) * (60)) * (60)) * (1000);
                        rangeDate := thirtyDays.toString();
                    end else if (CompareStr(Self.command, Self.VIEWALLORDERS)) = (0) then begin
                        rangeDate := currentTime.toString();
                    end;
                    rangeDateLong := StrToInt64(rangeDate);
                    Self.fromDate := (currentTime) - (rangeDateLong).toString();
                    time := TJava.NewString(currentTime.toString());
                    Self.toDate := time;
                end else if (CompareStr(Self.dateType, TOrderHistoryData.TYPECAESAR)) = (0) then begin
                    calendar := TCalendar.getInstance();
                    TTimeUtil.getInstance().setCalendar(calendar, Self.fromYear, Self.fromMonth, Self.fromDay, Self.fromHour);
                    Self.fromDate := calendar.getTimeInMillis().toString();
                    TTimeUtil.getInstance().setCalendar(calendar, Self.toYear, Self.toMonth, Self.toDay, Self.toHour);
                    Self.toDate := calendar.getTimeInMillis().toString();
                end;
                if ((Self.toDate = '')) or ((System.Length(Self.toDate)) > (Self.MAXLEN)) then begin
                    isValid := False;
                end;
                if ((Self.fromDate = '')) or ((System.Length(Self.fromDate)) > (Self.MAXLEN)) then begin
                    isValid := False;
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Attempt to View orders in (fromDate=');
                stringBuffer.append(Self.fromDate);
                stringBuffer.append(',toDate=');
                stringBuffer.append(Self.toDate);
                stringBuffer.append(')');
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.put('Exception in validation', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TDateRangeOrderHistoryView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDateRangeOrderHistoryView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TDateRangeOrderHistoryView.validationInfo: string;
var
  result_: TStringMaker;
begin
        try
            result_ := TStringMaker.Create();
            if ((Self.dateType) = ('')) or ((((CompareStr(Self.dateType, TOrderHistoryData.TYPELONG)) <> (0)) and ((CompareStr(Self.dateType, TOrderHistoryData.TYPECAESAR)) <> (0)))) then begin
                result_.append('DATETYPE not recognized');
            end;
            if ((Self.toDate = '')) or ((System.Length(Self.toDate)) > (Self.MAXLEN)) then begin
                result_.append('Invalid To Date');
            end;
            if ((Self.fromDate = '')) or ((System.Length(Self.fromDate)) > (Self.MAXLEN)) then begin
                result_.append('Invalid From Date');
            end;
            Exit(result_.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

// throws Exception
function TDateRangeOrderHistoryView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

