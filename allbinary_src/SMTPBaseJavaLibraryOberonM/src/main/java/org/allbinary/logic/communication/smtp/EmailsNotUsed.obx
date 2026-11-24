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
// package org.allbinary.logic.communication.smtp
unit EmailsNotUsed;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TEmailsNotUsed = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    emailInfoVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  EmailData, Email, BasicArrayListD, BasicErrorNodeUtil, StdUtil;


{AB:CODE}

procedure TEmailsNotUsed.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TEmailsNotUsed.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEmailsNotUsed.Create;
begin
    inherited Create;
    InitFields;
        Self.emailInfoVector := TBasicArrayListD.Create();
end;
    

// throws Exception
function TEmailsNotUsed.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  size: Integer;
  email_: TEmail;
  emailNode: TNode;
  index: Integer;
  error: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toXmlNode');
            end;
            node_ := document_.createElement(TEmailData.NAME);
            size := Self.emailInfoVector.size();
            for index := 0 to size - 1 do begin
                email_ := TEmail(TJava.ToObject(Self.emailInfoVector.get(index)));
                emailNode := email_.toXmlNode(document_);
                if (emailNode) <> (nil) then begin
                    node_.appendChild(emailNode);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), 'toXmlNode()');
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode()', TJava.Box(e));
            end;
            error := 'Error Processing Order.  Please contact us if error persists.<p/>';
            Exit(TBasicErrorNodeUtil.get(document_, error));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

