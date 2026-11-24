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
// package taghelpers
unit ValidationViewHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, Document, Node, ViewHelper;

type
  {AB:TYPES}
  TValidationViewHelper = class(TViewHelper, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    viewInterface: IValidationComponentInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation

{AB:CODE}

procedure TValidationViewHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TValidationViewHelper.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TValidationViewHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(hashMap_, pageContext_);
        InitFields;
        Self.viewInterface := (TJava.ToObject(Self.getViewObject()) as IValidationComponentInterface);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function TValidationViewHelper.isValid: Boolean;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Started', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(Self.viewInterface.isValid());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TValidationViewHelper.validationInfo: string;
begin
        try
            Exit(Self.viewInterface.validationInfo());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Unknown Validation Error');
            end;
        end;
end;
    

function TValidationViewHelper.toValidationInfoDoc: TDocument;
begin
        try
            Exit(Self.viewInterface.toValidationInfoDoc());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toValidationInfoDoc()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TValidationViewHelper.toValidationInfoNode(document_: TDocument): TNode;
begin
        try
            Exit(Self.viewInterface.toValidationInfoNode(document_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toValidationInfoNode()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

