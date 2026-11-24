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
unit ValidationStoreFrontStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, StoreFrontStatisticsComponent;

type
  {AB:TYPES}
  // extends StoreFrontComponent
  TValidationStoreFrontStatisticsView = class(TStoreFrontStatisticsComponent, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    newStoreFrontInterface: IStoreFrontInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TValidationStoreFrontStatisticsView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TValidationStoreFrontStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TValidationStoreFrontStatisticsView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TValidationStoreFrontStatisticsView.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TValidationStoreFrontStatisticsView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Never');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TValidationStoreFrontStatisticsView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TValidationStoreFrontStatisticsView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TValidationStoreFrontStatisticsView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

