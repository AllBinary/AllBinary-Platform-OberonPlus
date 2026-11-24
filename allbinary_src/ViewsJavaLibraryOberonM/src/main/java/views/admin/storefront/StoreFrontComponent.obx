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
// package views.admin.storefront
unit StoreFrontComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TStoreFrontComponent = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    newStoreFrontInterface: IStoreFrontInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
  end;

implementation
uses
  StoreFront;


{AB:CODE}

procedure TStoreFrontComponent.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TStoreFrontComponent.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.newStoreFrontInterface := (TJava.ToObject(TStoreFront.Create(THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest())))) as IStoreFrontInterface);
        if (Self.newStoreFrontInterface.getName()) = ('') then begin
            Self.newStoreFrontInterface.setName(Self.getWeblisketSession().getStoreName());
        end;
end;
    

// throws Exception
function TStoreFrontComponent.view: string;
begin
        try
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

