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
// package org.allbinary.business.user.quoterequest
unit QuoteRequest;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TQuoteRequest = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    id: string;
    userName: string;
    projectInfo: string;
    userComments: string;
    budget: string;
    timeFrame: string;
    comments: string;
    procedure InitFields;
        constructor Create(userName: string; request: THttpServletRequest); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure setUserName(value: string); virtual;
        procedure setProjectInfo(value: string); virtual;
        procedure setUserComments(value: string); virtual;
        procedure setBudget(value: string); virtual;
        procedure setTimeFrame(value: string); virtual;
        procedure setComments(value: string); virtual;
        function getUserName: string; virtual;
        function getProjectInfo: string; virtual;
        function getUserComments: string; virtual;
        function getBudget: string; virtual;
        function getTimeFrame: string; virtual;
        function getComments: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, QuoteRequestData, UserData, QuoteRequestIdGenerator, StdUtil, AbSqlData, StringMaker, StringUtil;


{AB:CODE}

procedure TQuoteRequest.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
end;
    

constructor TQuoteRequest.Create(userName: string; request: THttpServletRequest);
var
  quoteRequestData_: TQuoteRequestData;
begin
    inherited Create;
    InitFields;
        quoteRequestData_ := TQuoteRequestData.getInstance();
        Self.id := TQuoteRequestIdGenerator.Create().getNext();
        Self.setUserName(userName);
        Self.setProjectInfo(TJava.UnboxString(TJava.ToObject(request.getParameter(quoteRequestData_.PROJECT_INFO))));
        Self.setUserComments(TJava.UnboxString(TJava.ToObject(request.getParameter(quoteRequestData_.CUSTOMER_COMMENTS))));
        Self.setBudget(TJava.UnboxString(TJava.ToObject(request.getParameter(quoteRequestData_.BUDGET))));
        Self.setTimeFrame(TJava.UnboxString(TJava.ToObject(request.getParameter(quoteRequestData_.TIMEFRAME))));
        Self.setComments(TJava.UnboxString(TJava.ToObject(request.getParameter(quoteRequestData_.COMMENTS))));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
            Self.logUtil.putF('Created with: ' + TJava.ToString(Self.toHashMap()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TQuoteRequest.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  quoteRequestData_: TQuoteRequestData;
begin
    inherited Create;
    InitFields;
        quoteRequestData_ := TQuoteRequestData.getInstance();
        Self.id := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.ID))));
        Self.setUserName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TUserData.USERNAME)))));
        Self.setProjectInfo(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.PROJECT_INFO)))));
        Self.setUserComments(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.CUSTOMER_COMMENTS)))));
        Self.setBudget(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.BUDGET)))));
        Self.setTimeFrame(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.TIMEFRAME)))));
        Self.setComments(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(quoteRequestData_.COMMENTS)))));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
            Self.logUtil.putF('Created with: ' + TJava.ToString(Self.toHashMap()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function TQuoteRequest.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            if (((Self.userName) = ('')) or ((System.Length(Self.userName)) < (4))) or ((System.Length(Self.userName)) > (250)) then begin
                valid := False;
            end;
            if (((Self.projectInfo) = ('')) or ((System.Length(Self.projectInfo)) < (0))) or ((System.Length(Self.projectInfo)) > (TAbSqlData.MAXBLOB)) then begin
                valid := False;
            end;
            if (((Self.userComments) = ('')) or ((System.Length(Self.userComments)) < (0))) or ((System.Length(Self.userComments)) > (TAbSqlData.MAXBLOB)) then begin
                valid := False;
            end;
            if (((Self.budget) = ('')) or ((System.Length(Self.budget)) < (0))) or ((System.Length(Self.budget)) > (TAbSqlData.MAXBLOB)) then begin
                valid := False;
            end;
            if (((Self.timeFrame) = ('')) or ((System.Length(Self.timeFrame)) < (0))) or ((System.Length(Self.timeFrame)) > (TAbSqlData.MAXBLOB)) then begin
                valid := False;
            end;
            if (((Self.comments) = ('')) or ((System.Length(Self.comments)) < (0))) or ((System.Length(Self.comments)) > (TAbSqlData.MAXBLOB)) then begin
                valid := False;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TQuoteRequest.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (((Self.userName) = ('')) or ((System.Length(Self.userName)) < (4))) or ((System.Length(Self.userName)) > (250)) then begin
                stringBuffer.append('Please enter a User Name with more than 4 characters.<br>');
            end;
            if (((Self.projectInfo) = ('')) or ((System.Length(Self.projectInfo)) < (0))) or ((System.Length(Self.projectInfo)) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Please enter Project Info with less than ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' characters.<br>');
            end;
            if (((Self.userComments) = ('')) or ((System.Length(Self.userComments)) < (0))) or ((System.Length(Self.userComments)) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Please enter User Comments with less than ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' characters.<br>');
            end;
            if (((Self.budget) = ('')) or ((System.Length(Self.budget)) < (0))) or ((System.Length(Self.budget)) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Please enter Budget with less than ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' characters.<br>');
            end;
            if (((Self.timeFrame) = ('')) or ((System.Length(Self.timeFrame)) < (0))) or ((System.Length(Self.timeFrame)) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Please enter time frame with less than ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' characters.<br>');
            end;
            if (((Self.comments) = ('')) or ((System.Length(Self.comments)) < (0))) or ((System.Length(Self.comments)) > (TAbSqlData.MAXBLOB)) then begin
                stringBuffer.append('Please enter comments with less than ' + TJava.ToString(TAbSqlData.MAXBLOB) + ' characters.<br>');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TQuoteRequest.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        values := TBasicArrayListD.Create();
        values.add(TJava.Box(Self.id));
        values.add(TJava.Box(Self.userName));
        values.add(TJava.Box(Self.projectInfo));
        values.add(TJava.Box(Self.userComments));
        values.add(TJava.Box(Self.budget));
        values.add(TJava.Box(Self.timeFrame));
        values.add(TJava.Box(Self.comments));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.add(TJava.Box(time));
        values.add(TJava.Box(time));
        Exit(values);
end;
    

function TQuoteRequest.toHashMap: TJavaHashMap<TObject, TObject>;
var
  quoteRequestData_: TQuoteRequestData;
  values: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        quoteRequestData_ := TQuoteRequestData.getInstance();
        values := TStdUtil.getInstance().createHashMap();
        values.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
        values.put(TJava.Box(quoteRequestData_.PROJECT_INFO), TJava.Box(Self.projectInfo));
        values.put(TJava.Box(quoteRequestData_.CUSTOMER_COMMENTS), TJava.Box(Self.userComments));
        values.put(TJava.Box(quoteRequestData_.BUDGET), TJava.Box(Self.budget));
        values.put(TJava.Box(quoteRequestData_.TIMEFRAME), TJava.Box(Self.timeFrame));
        values.put(TJava.Box(quoteRequestData_.COMMENTS), TJava.Box(Self.comments));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(values);
end;
    

procedure TQuoteRequest.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TQuoteRequest.setProjectInfo(value: string);
begin
        Self.projectInfo := value;
end;
    

procedure TQuoteRequest.setUserComments(value: string);
begin
        Self.userComments := value;
end;
    

procedure TQuoteRequest.setBudget(value: string);
begin
        Self.budget := value;
end;
    

procedure TQuoteRequest.setTimeFrame(value: string);
begin
        Self.timeFrame := value;
end;
    

procedure TQuoteRequest.setComments(value: string);
var
  stringUtil_: TStringUtil;
begin
        Self.comments := value;
        stringUtil_ := TStringUtil.getInstance();
        if (Self.comments) = ('') then begin
            Self.comments := stringUtil_.EMPTY_STRING;
        end;
end;
    

function TQuoteRequest.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TQuoteRequest.getProjectInfo: string;
begin
        Exit(Self.projectInfo);
end;
    

function TQuoteRequest.getUserComments: string;
begin
        Exit(Self.userComments);
end;
    

function TQuoteRequest.getBudget: string;
begin
        Exit(Self.budget);
end;
    

function TQuoteRequest.getTimeFrame: string;
begin
        Exit(Self.timeFrame);
end;
    

function TQuoteRequest.getComments: string;
begin
        Exit(Self.comments);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

