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
// package org.allbinary.logic.communication.smtp.event.handler
unit EmailEventHandlerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, UserInterface, LogUtil, UserEmailEventNameData, AbeClientInformationInterface, UserEmailEventHandler;

type
  {AB:TYPES}
  TEmailEventHandlerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TEmailEventHandlerUtil;
    procedure InitFields;
        class function getInstance: TEmailEventHandlerUtil; static;
        constructor Create;
        function getEventHandler(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userVector: TBasicArrayList): TUserEmailEventHandler; virtual;
        class function getUserEmailEventListenerVector(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): TBasicArrayList; static;
  end;

implementation
uses
  BasicArrayListD, UserConfigurationInterface, StdUtil, UserEmailConfigurationInterface, UserEmailEventsConfigurationInterface, UserEmailEventListenerInterface, LogUserEmailEventListenerModule, StringMaker;


{AB:CODE}

procedure TEmailEventHandlerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TEmailEventHandlerUtil.getInstance: TEmailEventHandlerUtil;
begin
        Exit(TEmailEventHandlerUtil.instance);
end;
    

constructor TEmailEventHandlerUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TEmailEventHandlerUtil.getEventHandler(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userVector: TBasicArrayList): TUserEmailEventHandler;
var
  stringBuffer: TStringMaker;
  userEmailEventHandler_: TUserEmailEventHandler;
  size: Integer;
  userInterface_: IUserInterface;
  vector: TBasicArrayList;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Returning UserEmailEventHandler for ');
            stringBuffer.appendint(userVector.size());
            stringBuffer.append(' users.');
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getEventHandler');
        end;
        userEmailEventHandler_ := TUserEmailEventHandler.Create();
        userEmailEventHandler_.addListener(TLogUserEmailEventListenerModule.Create());
        size := userVector.size();
        for index := 0 to size - 1 do begin
            userInterface_ := (TJava.ToObject(userVector.get(index)) as IUserInterface);
            vector := TEmailEventHandlerUtil.getUserEmailEventListenerVector(abeClientInformation, userEmailEventNameData_, userInterface_);
            userEmailEventHandler_.addListener(vector);
        end;
        Exit(userEmailEventHandler_);
end;
    

// throws Exception
class function TEmailEventHandlerUtil.getUserEmailEventListenerVector(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): TBasicArrayList;
var
  userConfigurationInterface_: IUserConfigurationInterface;
  userEmailConfigurationInterface_: IUserEmailConfigurationInterface;
  userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface;
  userEmailEventListenerInterface_: IUserEmailEventListenerInterface;
  vector: TBasicArrayList;
begin
        userConfigurationInterface_ := userInterface_.getUserConfigurationInterface();
        userEmailConfigurationInterface_ := userConfigurationInterface_.getUserEmailConfigurationInterface();
        userEmailEventsConfigurationInterface_ := userEmailConfigurationInterface_.getUserEmailEventsConfigurationInterface();
        userEmailEventListenerInterface_ := userEmailEventsConfigurationInterface_.getEventListener(abeClientInformation, userEmailEventNameData_, userInterface_);
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(userEmailEventListenerInterface_));
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  TEmailEventHandlerUtil.instance := TEmailEventHandlerUtil.Create();
  {AB:END}

end.

