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
// package views.generic.advertisement.area
unit AdvertisementAreaView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TAdvertisementAreaView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    advertisementAreaName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  AdvertisementAreaData, AdvertisementAreaInterface, AdvertisementAreasEntityFactory, AdvertisementAreasEntityInterface;


{AB:CODE}

procedure TAdvertisementAreaView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TAdvertisementAreaView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementAreaView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.advertisementAreaName := TJava.UnboxString(TJava.ToObject(Self.getPropertiesHashMap().get(TAdvertisementAreaData.getInstance().NAME)));
end;
    

// throws Exception
function TAdvertisementAreaView.toXmlNode(document_: TDocument): TNode;
var
  advertisementAreasEntityInterface_: IAdvertisementAreasEntityInterface;
  advertisementAreaInterface_: IAdvertisementAreaInterface;
begin
        try
            advertisementAreasEntityInterface_ := TAdvertisementAreasEntityFactory.getInstance();
            advertisementAreaInterface_ := advertisementAreasEntityInterface_.get(Self.getTransformInfoInterface().getStoreName(), Self.advertisementAreaName);
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TAdvertisementAreaView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TAdvertisementAreaView.view: string;
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

