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
// package views.admin.storefront.statistics
unit StoreFrontStatisticsComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, DomNodeInterface, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TStoreFrontStatisticsComponent = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    newStoreFrontInterface: IStoreFrontInterface;
    domNodeInterface: IDomNodeInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  StoreFrontFactory, RealTimeStoreFrontStatistics, RealTimeStoreFrontStatisticsView;


{AB:CODE}

procedure TStoreFrontStatisticsComponent.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TStoreFrontStatisticsComponent.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.newStoreFrontInterface := (TJava.ToObject(TStoreFrontFactory.getInstance(transformInfoInterface_.getStoreName())) as IStoreFrontInterface);
        Self.domNodeInterface := TRealTimeStoreFrontStatisticsView.Create(TRealTimeStoreFrontStatistics.Create(Self.newStoreFrontInterface), Self.getWeblisketSession().getRole());
end;
    

procedure TStoreFrontStatisticsComponent.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self.domNodeInterface) as IDomNodeInterface));
end;
    

// throws Exception
function TStoreFrontStatisticsComponent.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
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

