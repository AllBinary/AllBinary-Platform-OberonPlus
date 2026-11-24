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
// package views.business.context
unit RootContextView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, TransformTemplateInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TRootContextView = class(THttpStoreComponentView, ITransformTemplateInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
        function getName: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, TransformFactory, TransformInterface, TransformInfo, NoTemplateTransformInfoObjectConfig;


{AB:CODE}

procedure TRootContextView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TRootContextView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRootContextView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'RootContextView()');
        end;
end;
    

// throws Exception
function TRootContextView.view: string;
var
  viewName: string;
  componentInterface: ITransformInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('View Name: ' + Self.getTransformInfoInterface().getName(), TJava.Box(Self), 'view()');
            end;
            viewName := Self.getName();
            componentInterface := TTransformFactory.getInstance().getInstance(Self.abeClientInformation, viewName, Self.getTransformInfoInterface());
            Exit(componentInterface.view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TRootContextView.getName: string;
var
  objectConfig: TNoTemplateTransformInfoObjectConfig;
  componentsVector: TBasicArrayList;
  transformInfoInterface_: TTransformInfo;
  viewName: string;
begin
        try
            objectConfig := TNoTemplateTransformInfoObjectConfig.Create(Self.getTransformInfoInterface(), Self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc());
            componentsVector := objectConfig.getTransforms();
            if (componentsVector.size()) = (0) then begin
                raise SysUtils.Exception.Create('Template View Not Set - No Components');
            end;
            if (componentsVector.size()) > (1) then begin
                raise SysUtils.Exception.Create('To Many Root Template Views: ' + IntToStr(componentsVector.size()));
            end;
            transformInfoInterface_ := TTransformInfo(TJava.ToObject(componentsVector.get(0)));
            viewName := transformInfoInterface_.getName();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Root Template With View Name: ' + viewName, TJava.Box(Self), 'getName()');
            end;
            if (viewName = '') then begin
                raise SysUtils.Exception.Create('Template View Not Set - No View Name');
            end;
            Exit(viewName);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getName()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

