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
// package views.business.context.modules.storefront.customizer.includes.style.theme
unit ThemeCustomizerView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationInterface, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TThemeCustomizerView = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    validationInterface: IValidationInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  DomNodeInterface;


{AB:CODE}

procedure TThemeCustomizerView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TThemeCustomizerView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
procedure TThemeCustomizerView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self.validationInterface) as IDomNodeInterface));
end;
    

// throws Exception
function TThemeCustomizerView.view: string;
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

