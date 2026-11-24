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
unit BasketHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, WeblisketSession, LogUtil, TagHelper;

type
  {AB:TYPES}
  TBasketHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    MAX: Integer;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function isBasketEmpty: Boolean; virtual;
  end;

implementation
uses
  StoreFrontData, StoreFrontFactory, BasketInterface;


{AB:CODE}

procedure TBasketHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  Self.MAX := 200;
end;
    

constructor TBasketHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.propertiesHashMap := hashMap_;
        Self.pageContext := pageContext_;
        storeName := TJava.UnboxString(TJava.ToObject(Self.propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
end;
    

function TBasketHelper.isBasketEmpty: Boolean;
var
  basket: IBasketInterface;
begin
        try
            basket := Self.weblisketSession.getOrder().getBasket();
            if (basket.getNumberOfItems().intValue()) <= (0) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isBasketEmpty()', TJava.Box(e));
            end;
            Exit(True);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

