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
// package org.allbinary.business.context.modules.storefronts
unit BasicStoreFrontsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InitSql, LogUtil, BasicStoreFrontInterface;

type
  {AB:TYPES}
  TBasicStoreFrontsEntity = class(TInitSql)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
        constructor Create;
        function getStoreFrontInterface(name: string): IBasicStoreFrontInterface; virtual;
  end;

implementation
uses
  BasicStoreFront, StoreFrontData, UserDbInitInfo, StdUtil;


{AB:CODE}

procedure TBasicStoreFrontsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'storefronts';
end;
    

constructor TBasicStoreFrontsEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTable(Self.tableName);
end;
    

// throws Exception
function TBasicStoreFrontsEntity.getStoreFrontInterface(name: string): IBasicStoreFrontInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  storeHashMap: TJavaHashMap<TObject, TObject>;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(name));
        storeHashMap := inherited getRow(keysAndValues);
        if (storeHashMap) = (nil) then begin
            raise SysUtils.Exception.Create('No Such Store: ' + name);
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().FACTORYERROR) then begin
            Self.logUtil.putF('StoreFront: ' + storeHashMap.toString(), TJava.Box(Self), 'getStore()');
        end;
        Exit((TJava.ToObject(TBasicStoreFront.Create(storeHashMap)) as IBasicStoreFrontInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

