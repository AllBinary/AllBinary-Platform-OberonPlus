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
// package org.allbinary.data.tables.category
unit CategoryEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CategoryEntity;

type
  {AB:TYPES}
  TCategoryEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCategoryEntityFactory;
    procedure InitFields;
        class function getInstance: TCategoryEntityFactory; static;
        constructor Create;
        function getCategoryEntityInstance: TCategoryEntity; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TCategoryEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TCategoryEntityFactory.getInstance: TCategoryEntityFactory;
begin
        Exit(TCategoryEntityFactory.instance);
end;
    

constructor TCategoryEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCategoryEntityFactory.getCategoryEntityInstance: TCategoryEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TCategoryEntity.Create());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getCategoryEntityInstance()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCategoryEntityFactory.instance := TCategoryEntityFactory.Create();
  {AB:END}

end.

