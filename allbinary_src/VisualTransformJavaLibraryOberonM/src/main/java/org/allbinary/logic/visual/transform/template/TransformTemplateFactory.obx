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
// package org.allbinary.logic.visual.transform.template
unit TransformTemplateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformTemplateInterface;

type
  {AB:TYPES}
  TTransformTemplateFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformTemplateFactory;
    procedure InitFields;
        class function getInstance: TTransformTemplateFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; templateName: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformTemplateInterface; overload; virtual;
  end;

implementation
uses
  TransformInfoEntity, TransformInfoEntityBuilder, TransformInfoInterface, TransformInfoObjectFactory;


{AB:CODE}

procedure TTransformTemplateFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformTemplateFactory.getInstance: TTransformTemplateFactory;
begin
        Exit(TTransformTemplateFactory.instance);
end;
    

constructor TTransformTemplateFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformTemplateFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; templateName: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformTemplateInterface;
var
  transformInfoEntity_: TTransformInfoEntity;
  transformInfoInterface_: ITransformInfoInterface;
  error: string;
begin
        try
            transformInfoEntity_ := TTransformInfoEntityBuilder.getInstance();
            transformInfoInterface_ := transformInfoEntity_.get(templateName, propertiesHashMap, pageContext_);
            Exit((TJava.ToObject(TTransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_)) as ITransformTemplateInterface));
        except
            on e: SysUtils.Exception do begin
            error := 'Failed To Get Instance';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(error + templateName + '->TemplateFactory', TJava.Box(Self), 'getInstance(viewName, HashMap, PageContext)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformTemplateFactory.instance := TTransformTemplateFactory.Create();
  {AB:END}

end.

