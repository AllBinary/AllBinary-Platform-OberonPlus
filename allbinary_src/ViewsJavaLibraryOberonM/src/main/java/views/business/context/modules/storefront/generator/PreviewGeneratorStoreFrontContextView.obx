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
unit PreviewGeneratorStoreFrontContextView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, GeneratorStoreFrontContextView;

type
  {AB:TYPES}
  TPreviewGeneratorStoreFrontContextView = class(TGeneratorStoreFrontContextView)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function view: string; virtual;
  end;

implementation
uses
  TransformInfoData, TransformInfoHttpInterface, TransformInfosData, CommonSeps;


{AB:CODE}

procedure TPreviewGeneratorStoreFrontContextView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TPreviewGeneratorStoreFrontContextView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TPreviewGeneratorStoreFrontContextView.view: string;
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        try
            httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
            httpTransformInfoInterface.getPropertiesHashMap().put(TTransformInfoData.getInstance().PARTIAL, (TCommonSeps.getInstance().SPACE) + (TTransformInfosData.getInstance().PREVIEW));
            Exit(Self.view(TTransformInfosData.getInstance().PREVIEW));
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

