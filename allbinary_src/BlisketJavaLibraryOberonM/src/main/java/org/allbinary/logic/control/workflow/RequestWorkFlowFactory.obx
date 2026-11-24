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
// package org.allbinary.logic.control.workflow
unit RequestWorkFlowFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WorkFlowInterface;

type
  {AB:TYPES}
  TRequestWorkFlowFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(request: TServletRequest; response: TServletResponse; servletConfig_: TServletConfig; servletContext_: TServletContext): IWorkFlowInterface; overload; static;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface; overload; static;
  end;

implementation
uses
  WorkFlowData, WorkFlowEntityFactory, WeblisketSession, AbPathData, LicensingException;


{AB:CODE}
    

constructor TRequestWorkFlowFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception, LicensingException
class function TRequestWorkFlowFactory.getInstance(request: TServletRequest; response: TServletResponse; servletConfig_: TServletConfig; servletContext_: TServletContext): IWorkFlowInterface;
var
  httpRequest: THttpServletRequest;
  requestCommand: string;
  index: Integer;
  storeName: string;
  requestName: string;
begin
        httpRequest := THttpServletRequest(TJava.ToObject(request));
        requestCommand := httpRequest.getPathInfo();
        index := (Pos(TJava.ToString(TAbPathData.getInstance().SEPARATOR), requestCommand) - 1);
        storeName := Copy(requestCommand, (0) + 1, (index) - (0));
        requestName := Copy(requestCommand, (index) + 1, (System.Length(requestCommand)) - (index));
        Exit(TWorkFlowEntityFactory.getInstance().create2().get(requestName, storeName));
end;
    

// throws Exception, LicensingException
class function TRequestWorkFlowFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface;
var
  workFlowName: string;
  weblisketSession_: TWeblisketSession;
  storeName: string;
begin
        workFlowName := TJava.UnboxString(TJava.ToObject(pageContext_.getRequest().getParameter(TWorkFlowData.getInstance().NAME)));
        weblisketSession_ := TWeblisketSession.Create(hashMap_, pageContext_);
        storeName := weblisketSession_.getStoreName();
        Exit(TWorkFlowEntityFactory.getInstance().create2().get(workFlowName, storeName));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

