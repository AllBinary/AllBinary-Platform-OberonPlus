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
// package views.business.context.modules.storefront.generator
unit GeneratorStoreFrontContextView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TGeneratorStoreFrontContextView = class(THttpStoreComponentView)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view(group: string): string; overload; virtual;
        function view: string; overload; virtual;
  end;

implementation
uses
  StringUtil, TransformsGeneratorUtil, TransformInfosData;


{AB:CODE}

procedure TGeneratorStoreFrontContextView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TGeneratorStoreFrontContextView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TGeneratorStoreFrontContextView.view(group: string): string;
var
  result_: string;
begin
        result_ := TTransformsGeneratorUtil.getInstance().generateComponentsFromObjectConfig(Self.abeClientInformation, Self.getTransformInfoInterface(), group);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPEXTRAOUTPUT) then begin
            Exit(result_);
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;
    

// throws Exception
function TGeneratorStoreFrontContextView.view: string;
begin
        try
            Exit(Self.view(TTransformInfosData.getInstance().ALL));
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

