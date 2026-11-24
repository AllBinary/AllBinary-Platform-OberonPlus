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
unit AbEmail;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node, Email, EmailInterface;

type
  {AB:TYPES}
  TAbEmail = class(TInterfacedObject, IEmailInterface)
  public
    email: TEmail;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(server: string; from: string; to_: string; subject: string; textBody: string; htmlAttachment: string; contentBase: string);
        function getMimeMessage: TMimeMessage; virtual;
        function getDebugInfo: string; virtual;
        function log: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getEmail: TEmail; virtual;
        function toXmlDoc: TDocument; virtual;
  end;

implementation

{AB:CODE}

procedure TAbEmail.InitFields;
begin
  
end;

function TAbEmail.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbEmail.Create(server: string; from: string; to_: string; subject: string; textBody: string; htmlAttachment: string; contentBase: string);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
            Self.email := TEmail.Create(from, to_, subject, server, textBody, htmlAttachment, contentBase, True);
        end else begin
            Self.email := TEmail.Create(from, to_, subject, server, textBody, htmlAttachment, contentBase);
        end;
end;
    

function TAbEmail.getMimeMessage: TMimeMessage;
begin
        Exit(Self.email.getMimeMessage());
end;
    

function TAbEmail.getDebugInfo: string;
begin
        Exit(Self.email.getDebugInfo());
end;
    

// throws Exception
function TAbEmail.log: string;
begin
        Exit(Self.email.log());
end;
    

// throws Exception
function TAbEmail.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.email.toHashMap());
end;
    

// throws Exception
function TAbEmail.toXmlNode(document_: TDocument): TNode;
begin
        Exit(Self.email.toXmlNode(document_));
end;
    

function TAbEmail.getEmail: TEmail;
begin
        Exit(TEmail(TJava.ToObject(Self.email)));
end;
    

// throws Exception
function TAbEmail.toXmlDoc: TDocument;
begin
        Exit(Self.email.toXmlDoc());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

