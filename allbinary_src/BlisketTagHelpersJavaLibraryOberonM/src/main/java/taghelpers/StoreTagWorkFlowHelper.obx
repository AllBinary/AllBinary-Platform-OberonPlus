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
// package taghelpers
unit StoreTagWorkFlowHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelper, LogUtil, StoreWorkFlowInterface, AbeClientInformationInterface;

type
  {AB:TYPES}
  TStoreTagWorkFlowHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    storeWorkFlowInterface: IStoreWorkFlowInterface;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function process: Integer; virtual;
  end;

implementation
uses
  StoreTagWorkFlowFactory, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TStoreTagWorkFlowHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
end;
    

constructor TStoreTagWorkFlowHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
            Self.logUtil.putF('Properties: ' + hashMap_.toString(), TJava.Box(Self), 'StoreTagWorkFlowHelper()');
        end;
        Self.storeWorkFlowInterface := TStoreTagWorkFlowFactory.getInstance().getInstance(Self.abeClientInformation, hashMap_, pageContext_);
end;
    

// throws Exception
function TStoreTagWorkFlowHelper.process: Integer;
var
  error: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Process', TJava.Box(Self), Self.commonStrings.PROCESS);
            end;
            Exit(Self.storeWorkFlowInterface.process());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to process workflow: ';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

