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
unit WorkFlowRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, WorkFlowInterface, AbeClientInformationInterface, ModifyTable;

type
  {AB:TYPES}
  TWorkFlowRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    workFlowInterface: IWorkFlowInterface;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function delete_: string; virtual;
        function insert: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  WorkFlowEntityFactory, NewWorkFlowFactory, WorkFlowData, StringUtil, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TWorkFlowRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
end;
    

constructor TWorkFlowRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.workFlowInterface := TNewWorkFlowFactory.getInstance().getInstance(Self.abeClientInformation, hashMap_, pageContext_);
end;
    

// throws Exception
function TWorkFlowRequestHelper.delete_: string;
var
  stringUtil_: TStringUtil;
  success: string;
  error: string;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            TWorkFlowEntityFactory.getInstance().create2().delete_(Self.workFlowInterface.getName(), stringUtil_.EMPTY_STRING);
            success := 'Successfully Removed the workflow with ' + TJava.ToString(TWorkFlowData.getInstance().NAME) + '= ' + Self.workFlowInterface.getName() + ' from ';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            try
                error := 'Failed to remove workflow with ' + TJava.ToString(TWorkFlowData.getInstance().NAME) + '= ' + Self.workFlowInterface.getName() + ' from ';
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                    Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
                end;
                raise SysUtils.Exception.Create(e);
            except
                on e2: SysUtils.Exception do begin
                error := 'Failed to get data from workflowinterface to set error string';
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                    Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e2));
                end;
                Exit(error);
                end;
            end;
            end;
        end;
end;
    

function TWorkFlowRequestHelper.insert: string;
var
  success: string;
  error: string;
begin
        try
            success := 'New User Successfully added to the Users Table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'add()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add User';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'add()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TWorkFlowRequestHelper.update: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Updated WorkFlow Successfully';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update WorkFlow';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

