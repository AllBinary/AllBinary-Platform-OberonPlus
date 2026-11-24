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
// package org.allbinary.data.tables.user.commerce.inventory.order
unit OrderHistoryEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, Order, OrderHistory, LogUtil, AbSqlBean, OrderHistoryEntityInterface;

type
  {AB:TYPES}
  TOrderHistoryEntity = class(TAbSqlBean, IOrderHistoryEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(userName: string; order_: TOrder); overload; virtual;
        procedure insert(values: TBasicArrayList); overload; virtual;
        procedure setStatus(orderId: string; status: string); virtual;
        procedure setPaymentMethod(orderId: string; paymentMethod: string); virtual;
        function getStoreOrders(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList; virtual;
        function getOrders(userName: string): TBasicArrayList; overload; virtual;
        function getOrders(status: string; fromDate: string; toDate: string): TBasicArrayList; overload; virtual;
        function getOrders(fromDate: string; toDate: string): TBasicArrayList; overload; virtual;
        function getOrder(id: string): TOrderHistory; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure update(whereHashMap: TJavaHashMap<TObject, TObject>; orderHashMap: TJavaHashMap<TObject, TObject>); virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, StoreFrontFactory, EntryData, HistoryDbInitInfo, UserData, BillingAddressData, ShippingAddressData, StreetAddress, Basket, BasketInterface, OrderData, OrderHistoryData, Money, PaymentData, PaymentInterface, TaxFactory, ShippingMethodData, ShippingMethods, ShippingInterface, OrderHistoryIdGenerator, TableDataFactory, BillingAddressesEntity, ShippingAddressesEntity, PaymentEntity, StdUtil, SuperCrypt, StringMaker, StringUtil, AbeClientInformationInterface, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TOrderHistoryEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'orderhistory';
end;

function TOrderHistoryEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOrderHistoryEntity.Create;
begin
        inherited Create(THistoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TOrderHistoryEntity.insert(userName: string; order_: TOrder);
var
  vector: TBasicArrayList;
  paymentInterface_: IPaymentInterface;
  billingAddress: TStreetAddress;
  shippingAddress: TStreetAddress;
  abeClientInformation: IAbeClientInformationInterface;
  storeFrontInterface_: IStoreFrontInterface;
  shippingInterface_: IShippingInterface;
  shippingCost: TMoney;
  basketInterface_: IBasketInterface;
  subTotal: TMoney;
  taxRate: Single;
  tax: TMoney;
  total: TMoney;
  empty: string;
  ZERO: string;
  calendar: TCalendar;
  time: string;
  random_: Integer;
begin
        vector := TBasicArrayListD.Create();
        try
            paymentInterface_ := TPaymentEntity.Create().getDefault(userName);
            billingAddress := TBillingAddressesEntity.Create(userName).getDefault();
            shippingAddress := TShippingAddressesEntity.Create(userName).getDefault();
            abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
            storeFrontInterface_ := TStoreFrontFactory.getInstance(order_.getStoreName());
            shippingInterface_ := TShippingMethods.Create(abeClientInformation, storeFrontInterface_).getShippingInterface(order_.getShippingMethod());
            shippingCost := shippingInterface_.getCost(order_);
            basketInterface_ := order_.getBasket();
            subTotal := basketInterface_.getSubTotal();
            taxRate := TTaxFactory.getInstance().getInstance(abeClientInformation, storeFrontInterface_).getTaxRate(shippingAddress, storeFrontInterface_);
            tax := TMoney.Create();
            total := TMoney.Create();
            total.add(shippingCost.toString());
            total.add(subTotal.toString());
            tax.add(total.toString());
            tax.multiply(taxRate);
            total.add(tax.toString());
            empty := TStringUtil.getInstance().EMPTY_STRING;
            vector.add(TJava.Box(TOrderHistoryIdGenerator.Create().getNext()));
            ZERO := TTableDataFactory.getInstance().ZERO_STRING;
            vector.add(TJava.Box(order_.getId()));
            vector.add(TJava.Box(userName));
            vector.add(TJava.Box(order_.getStoreName()));
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            vector.add(TJava.Box(ZERO));
            vector.add(TJava.Box(time));
            vector.add(TJava.Box(ZERO));
            vector.add(TJava.Box(ZERO));
            vector.add(TJava.Box(TOrderHistoryData.PREPROCESSING));
            vector.add(TJava.Box(order_.getPaymentMethod()));
            if (paymentInterface_) <> (nil) then begin
                vector.add(TJava.Box(paymentInterface_.getName()));
                vector.add(TJava.Box(paymentInterface_.getType()));
                vector.add(TJava.Box(paymentInterface_.getExpiration()));
                random_ := TJavaRandom.Create().nextInt(TSuperCrypt.KEYMAX);
                vector.add(TJava.Box(TSuperCrypt.Create(random_).encrypt(paymentInterface_.getNumber())));
                vector.add(TJava.Box(random_.toString()));
            end else begin
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(ZERO));
            end;
            if (billingAddress) <> (nil) then begin
                vector.add(TJava.Box(billingAddress.getName()));
                vector.add(TJava.Box(billingAddress.getStreet()));
                vector.add(TJava.Box(billingAddress.getCity()));
                vector.add(TJava.Box(billingAddress.getState()));
                vector.add(TJava.Box(billingAddress.getCode()));
                vector.add(TJava.Box(billingAddress.getCountry()));
            end else begin
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
            end;
            if (shippingAddress) <> (nil) then begin
                vector.add(TJava.Box(shippingAddress.getName()));
                vector.add(TJava.Box(shippingAddress.getStreet()));
                vector.add(TJava.Box(shippingAddress.getCity()));
                vector.add(TJava.Box(shippingAddress.getState()));
                vector.add(TJava.Box(shippingAddress.getCode()));
                vector.add(TJava.Box(shippingAddress.getCountry()));
            end else begin
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
                vector.add(TJava.Box(empty));
            end;
            vector.add(TJava.Box(order_.getShippingMethod()));
            vector.add(TJava.Box(subTotal.toString()));
            vector.add(TJava.Box(shippingCost.toString()));
            vector.add(TJava.Box(tax.toString()));
            vector.add(TJava.Box(total.toString()));
            vector.add(TJava.Box(order_.getSpecial()));
            vector.add(TJava.Box(order_.getUserComments()));
            vector.add(TJava.Box(order_.getUserCancelComments()));
            vector.add(TJava.Box(order_.getStoreComments()));
            vector.add(TJava.Box(order_.getStoreCancelComments()));
            Self.insert(vector);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put('Command Failed: ' + TJava.ToString(vector), TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.insert(values: TBasicArrayList);
begin
        try
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.setStatus(orderId: string; status: string);
var
  calendar: TCalendar;
  time: string;
  updateHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            updateHashMap := TStdUtil.getInstance().createHashMap();
            updateHashMap.put(TJava.Box(TOrderHistoryData.STATUS), TJava.Box(status));
            if (CompareStr(status, TOrderHistoryData.CANCELLED)) = (0) then begin
                updateHashMap.put(TJava.Box(TOrderHistoryData.CANCELDATE), TJava.Box(time));
            end else if (CompareStr(status, TOrderHistoryData.SHIPPED)) = (0) then begin
                updateHashMap.put(TJava.Box(TOrderHistoryData.SHIPPEDDATE), TJava.Box(time));
            end;
            inherited updateWhere(TOrderData.ID, orderId, updateHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'setStatus', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.setPaymentMethod(orderId: string; paymentMethod: string);
var
  calendar: TCalendar;
  time: string;
  updateHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            updateHashMap := TStdUtil.getInstance().createHashMap();
            updateHashMap.put(TJava.Box(TPaymentData.METHOD), TJava.Box(paymentMethod));
            updateHashMap.put(TJava.Box(TOrderHistoryData.TRANSDATE), TJava.Box(time));
            inherited updateWhere(TOrderData.ID, orderId, updateHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'setPaymentMethod', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
function TOrderHistoryEntity.getStoreOrders(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap<TObject, TObject>;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap<TObject, TObject>;
  orderReview: TOrderHistory;
  i: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeFrontInterface_.getName()));
        orderHashMapVector := inherited getRows(whereHashMap);
        size := orderHashMapVector.size();
        for i := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(orderHashMapVector.get(i)));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(TJava.Box(orderReview));
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(userName: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap<TObject, TObject>;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap<TObject, TObject>;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
        orderHashMapVector := inherited getRows(whereHashMap);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(orderHashMapVector.get(index)));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(TJava.Box(orderReview));
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(status: string; fromDate: string; toDate: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap<TObject, TObject>;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap<TObject, TObject>;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TJava.Box(TOrderHistoryData.STATUS), TJava.Box(status));
        orderHashMapVector := inherited getRowsWhereBetween(whereHashMap, TOrderHistoryData.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(orderHashMapVector.get(index)));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(TJava.Box(orderReview));
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(fromDate: string; toDate: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap<TObject, TObject>;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        orderHashMapVector := inherited getRowsWhereBetween(TOrderHistoryData.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(orderHashMapVector.get(index)));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(TJava.Box(orderReview));
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrder(id: string): TOrderHistory;
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
  orderReviewHashMap: TJavaHashMap<TObject, TObject>;
  orderHistory_: TOrderHistory;
begin
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TJava.Box(TOrderData.ID), TJava.Box(id));
        orderReviewHashMap := inherited getRow(whereHashMap);
        if (orderReviewHashMap) <> (nil) then begin
            orderHistory_ := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            Exit(orderHistory_);
        end else begin
            Exit(nil);
        end;
end;
    

function TOrderHistoryEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CREATE TABLE ');
        stringBuffer.append(Self.tableName);
        stringBuffer.append(' (');
        stringBuffer.append(entryData_.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TUserData.USERNAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TStoreFrontData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SHIPPEDDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.ORDERDATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TRANSDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.CANCELDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.STATUS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPaymentData.METHOD);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPaymentData.NAME);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.TYPE_);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.EXPIRATION);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.NUMBER);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(entryData_.ENCRYPTION);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TBillingAddressData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.STREET);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.CITY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.STATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.CODE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.COUNTRY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STREET);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CITY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CODE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.COUNTRY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingMethodData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SUBTOTAL);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SHIPPINGCOST);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TAX);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TOTAL);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(entryData_.SPECIAL);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TOrderData.CUSTOMERCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.CUSTOMERCANCELCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.STORECOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.STORECANCELCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append('PRIMARY KEY(');
        stringBuffer.append(entryData_.ID);
        stringBuffer.append(') )');
        Exit(stringBuffer.toString());
end;
    

function TOrderHistoryEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TOrderHistoryEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

// throws Exception
procedure TOrderHistoryEntity.update(whereHashMap: TJavaHashMap<TObject, TObject>; orderHashMap: TJavaHashMap<TObject, TObject>);
begin
        try
            Self.updateWhere(whereHashMap, orderHashMap);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

