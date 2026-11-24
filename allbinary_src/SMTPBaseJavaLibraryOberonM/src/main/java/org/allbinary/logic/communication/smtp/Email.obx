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
unit Email;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Document, Node, EmailInterface;

type
  {AB:TYPES}
  TEmail = class(TInterfacedObject, IEmailInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    msg: TMimeMessage;
    properties: TProperties;
    bs: TByteArrayOutputStream;
    isDebug: Boolean;
    class var DEBUG: string;
    class var SMTP_HOST: string;
    class var SMTP_PORT: string;
    class var SMTP_USER: string;
    class var SMTP_RETURN_ADDRESS: string;
    class var SMTP_LOCAL_HOST: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string); overload;
        constructor Create(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string; isDebug: Boolean); overload;
        procedure init(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string); overload; virtual;
        procedure init(server: string; authenticator_: TAuthenticator; addresses_from: TArray<TInternetAddress>; addresses_to: TArray<TInternetAddress>; addresses_cc: TArray<TInternetAddress>; addresses_bcc: TArray<TInternetAddress>; subject: string; mimeBodyParts: TArray<TMimeBodyPart>); overload; virtual;
        function getMimeMessage: TMimeMessage; virtual;
        function getDebugInfo: string; virtual;
        function log: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
  end;

implementation
uses
  EmailData, ModDomHelper, StdUtil, StringUtil;


{AB:CODE}

procedure TEmail.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
end;

function TEmail.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEmail.Create(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string);
begin
    inherited Create;
    InitFields;
        Self.isDebug := False;
        Self.init(from, to_, subject, server, textBody, htmlAttachment, contentBase);
end;
    

constructor TEmail.Create(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string; isDebug: Boolean);
begin
    inherited Create;
    InitFields;
        Self.isDebug := isDebug;
        Self.init(from, to_, subject, server, textBody, htmlAttachment, contentBase);
end;
    

// throws Exception
procedure TEmail.init(from: string; to_: string; subject: string; server: string; textBody: string; htmlAttachment: string; contentBase: string);
var
  stringValidationUtil_: TObject;
  mimeBodyParts: TArray<TMimeBodyPart>;
  internetHeaders_: TInternetHeaders;
  commonStrings_: TCommonStrings;
begin
        try
            stringValidationUtil_ := nil;
            mimeBodyParts := TJava.NewArray<TMimeBodyPart>(TJava.IfThen<Variant>(not ((htmlAttachment = '')), 2, 1));
            mimeBodyParts[0] := TMimeBodyPart.Create();
            mimeBodyParts[0].setText(textBody);
            if not ((htmlAttachment = '')) then begin
                internetHeaders_ := TInternetHeaders.Create();
                internetHeaders_.addHeader('Content-Type', 'text/html');
                if not ((contentBase = '')) then begin
                    internetHeaders_.addHeader('Content-Base', contentBase);
                end;
                mimeBodyParts[1] := TMimeBodyPart.Create(internetHeaders_, TJava.GetBytes(htmlAttachment));
            end;
            Self.init(server, TAuthenticator(TJava.ToObject(nil)), TArray<TInternetAddress>.Create(TInternetAddress.Create(from)), TArray<TInternetAddress>.Create(TInternetAddress.Create(to_)), TJava.UnboxArray<TInternetAddress>(TJava.ToObject(nil)), TJava.UnboxArray<TInternetAddress>(TJava.ToObject(nil)), subject, mimeBodyParts);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'emailConstructor', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws MessagingException
procedure TEmail.init(server: string; authenticator_: TAuthenticator; addresses_from: TArray<TInternetAddress>; addresses_to: TArray<TInternetAddress>; addresses_cc: TArray<TInternetAddress>; addresses_bcc: TArray<TInternetAddress>; subject: string; mimeBodyParts: TArray<TMimeBodyPart>);
var
  hostName: string;
  session_: TSession;
  printStream_: TOutputStream;
  mimeMultipart_: TMimeMultipart;
  i: Integer;
begin
        Self.properties := TProperties.Create();
        Self.properties.put(TEmail.SMTP_HOST, server);
        try
            hostName := TStringUtil.getInstance().EMPTY_STRING;
            if (hostName = '') then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                    Self.logUtil.putF('Unable to get HostName so using fake', TJava.Box(Self), 'init()');
                end;
                Self.properties.put(TEmail.SMTP_LOCAL_HOST, 'FakeHostName');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put('Continuing on Exception: Unable to get HostName', TJava.Box(Self), 'init()', TJava.Box(e));
            end;
            Self.properties.put(TEmail.SMTP_LOCAL_HOST, 'FakeHostName');
            end;
        end;
        if Self.isDebug then begin
            Self.properties.put(TEmail.DEBUG, 'true');
        end;
        session_ := TSession.getInstance(Self.properties, authenticator_);
        if Self.isDebug then begin
            session_.setDebug(True);
            Self.bs := TByteArrayOutputStream.Create;
            printStream_ := Self.bs;
            session_.setDebugOut(printStream_);
        end;
        Self.msg := TMimeMessage.Create(session_);
        Self.msg.addFrom(addresses_from);
        Self.msg.setRecipients(TMessage.RecipientType.TO_, addresses_to);
        Self.msg.setRecipients(TMessage.RecipientType.CC, addresses_cc);
        Self.msg.setRecipients(TMessage.RecipientType.BCC, addresses_bcc);
        Self.msg.setSubject(subject);
        mimeMultipart_ := TMimeMultipart.Create();
        for i := 0 to System.Length(mimeBodyParts) - 1 do begin
            mimeMultipart_.addBodyPart(mimeBodyParts[i]);
        end;
        Self.msg.setContent(mimeMultipart_);
end;
    

function TEmail.getMimeMessage: TMimeMessage;
begin
        Exit(Self.msg);
end;
    

function TEmail.getDebugInfo: string;
begin
        if Self.isDebug then begin
            Exit('More Logging Before This To Standard Out: ' + TJava.ToString(TJava.NewString(Self.bs.toString())));
        end else begin
            Exit('Debugging Is Off');
        end;
end;
    

// throws Exception
function TEmail.log: string;
begin
        Exit(''#10'HashMap: ' + Self.toHashMap().toString());
end;
    

// throws Exception
function TEmail.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  addresses: TArray<TAddress>;
  index: Integer;
  mimeMultipart_: TMimeMultipart;
  content: string;
begin
        try
            hashMap_ := TStdUtil.getInstance().createHashMap();
            hashMap_.put(TJava.Box(TEmailData.SERVER), TJava.Box(TJava.UnboxString(TJava.ToObject(Self.properties.get(TEmail.SMTP_HOST)))));
            addresses := Self.msg.getFrom();
            if (addresses) <> (nil) then begin
                for index := 0 to System.Length(addresses) - 1 do begin
                    hashMap_.put(TJava.Box(TEmailData.FROM), TJava.Box(addresses[index].toString()));
                end;
            end;
            addresses := Self.msg.getRecipients(TMessage.RecipientType.TO_);
            if (addresses) <> (nil) then begin
                for index := 0 to System.Length(addresses) - 1 do begin
                    hashMap_.put(TJava.Box(TEmailData.TO_), TJava.Box(addresses[index].toString()));
                end;
            end;
            addresses := Self.msg.getRecipients(TMessage.RecipientType.CC);
            if (addresses) <> (nil) then begin
                for index := 0 to System.Length(addresses) - 1 do begin
                    hashMap_.put(TJava.Box(TEmailData.CC), TJava.Box(addresses[index].toString()));
                end;
            end;
            addresses := Self.msg.getRecipients(TMessage.RecipientType.BCC);
            if (addresses) <> (nil) then begin
                for index := 0 to System.Length(addresses) - 1 do begin
                    hashMap_.put(TJava.Box(TEmailData.BCC), TJava.Box(addresses[index].toString()));
                end;
            end;
            hashMap_.put(TJava.Box(TEmailData.SUBJECT), TJava.Box(Self.msg.getSubject()));
            mimeMultipart_ := TMimeMultipart(TJava.ToObject(Self.msg.getContent()));
            if (mimeMultipart_) <> (nil) then begin
                for index := 0 to mimeMultipart_.getCount() - 1 do begin
                    content := TJava.UnboxString(TJava.ToObject(mimeMultipart_.getBodyPart(index).getContent()));
                    hashMap_.put(TJava.Box(TEmailData.CONTENT), TJava.Box(content));
                end;
            end;
            Exit(hashMap_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toHashMap()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TEmail.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TEmailData.NAME, Self.toHashMap());
        Exit(node_);
end;
    

// throws Exception
function TEmail.toXmlDoc: TDocument;
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  TEmail.DEBUG := 'mail.debug';
  TEmail.SMTP_HOST := 'mail.smtp.host';
  TEmail.SMTP_PORT := 'mail.smtp.port';
  TEmail.SMTP_USER := 'mail.smtp.user';
  TEmail.SMTP_RETURN_ADDRESS := 'mail.from';
  TEmail.SMTP_LOCAL_HOST := 'mail.smtp.localhost';
  {AB:END}

end.

