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
unit BasicEmail;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EmailInfo, Document, Node, AbEmail, Email, EmailInterface;

type
  {AB:TYPES}
  TBasicEmail = class(TInterfacedObject, IEmailInterface)
  public
    email: TAbEmail;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(emailInfo_: TEmailInfo; to_: string);
        function getEmail: TEmail; virtual;
        function getMimeMessage: TMimeMessage; virtual;
        function getDebugInfo: string; virtual;
        function log: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
  end;

implementation
uses
  BasicEmailInfo;


{AB:CODE}

procedure TBasicEmail.InitFields;
begin
  
end;

function TBasicEmail.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicEmail.Create(emailInfo_: TEmailInfo; to_: string);
var
  basicEmailInfo_: TBasicEmailInfo;
begin
    inherited Create;
    InitFields;
        basicEmailInfo_ := emailInfo_.getBasicEmailInfo();
        Self.email := TAbEmail.Create(basicEmailInfo_.getEmailServerConfigurationInterface().getSmtpServer(), basicEmailInfo_.getEmailServerConfigurationInterface().getAccountName(), to_, basicEmailInfo_.getSubject(), basicEmailInfo_.getTextBody(), emailInfo_.getHtmlAttachment(), emailInfo_.getContentBase());
end;
    

function TBasicEmail.getEmail: TEmail;
begin
        Exit(TEmail(TJava.ToObject(Self.email.getEmail())));
end;
    

function TBasicEmail.getMimeMessage: TMimeMessage;
begin
        Exit(Self.email.getMimeMessage());
end;
    

function TBasicEmail.getDebugInfo: string;
begin
        Exit(Self.email.getDebugInfo());
end;
    

// throws Exception
function TBasicEmail.log: string;
begin
        Exit(Self.email.log());
end;
    

// throws Exception
function TBasicEmail.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.email.toHashMap());
end;
    

// throws Exception
function TBasicEmail.toXmlNode(document_: TDocument): TNode;
begin
        Exit(Self.email.toXmlNode(document_));
end;
    

// throws Exception
function TBasicEmail.toXmlDoc: TDocument;
begin
        Exit(Self.email.toXmlDoc());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

