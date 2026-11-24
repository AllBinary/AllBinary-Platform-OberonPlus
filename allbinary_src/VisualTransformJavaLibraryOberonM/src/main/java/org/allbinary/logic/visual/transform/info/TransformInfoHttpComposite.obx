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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoHttpComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSession, LogUtil, CommonStrings, TransformInfoHttpInterface, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfoHttpComposite = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    transformInfoInterface: ITransformInfoHttpInterface;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        function getWeblisketSession: TWeblisketSession; virtual;
        function getPageContext: TPageContext; virtual;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation

{AB:CODE}

procedure TTransformInfoHttpComposite.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;
    

constructor TTransformInfoHttpComposite.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.transformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
end;
    

// throws Exception
function TTransformInfoHttpComposite.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

function TTransformInfoHttpComposite.getWeblisketSession: TWeblisketSession;
begin
        Exit(TWeblisketSession.Create(Self.getPropertiesHashMap(), Self.getPageContext()));
end;
    

function TTransformInfoHttpComposite.getPageContext: TPageContext;
begin
        Exit(Self.transformInfoInterface.getPageContext());
end;
    

function TTransformInfoHttpComposite.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.transformInfoInterface.getPropertiesHashMap());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

