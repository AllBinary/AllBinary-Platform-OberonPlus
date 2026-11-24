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
// package org.allbinary.business.time.modified
unit TimeLastModifiedView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, TimeLastModified;

type
  {AB:TYPES}
  TTimeLastModifiedView = class(TInterfacedObject, IDomNodeInterface)
  public
    timeLastModified: TTimeLastModified;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(timeLastModified_: TTimeLastModified); overload;
        constructor Create(node_: TNode); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getTimeLastModified: TTimeLastModified; virtual;
        procedure setTimeLastModified(timeLastModified_: TTimeLastModified); virtual;
  end;

implementation
uses
  EntryData, DomNodeHelper, ModDomHelper;


{AB:CODE}

procedure TTimeLastModifiedView.InitFields;
begin
  
end;

function TTimeLastModifiedView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTimeLastModifiedView.Create(timeLastModified_: TTimeLastModified);
begin
    inherited Create;
    InitFields;
        Self.setTimeLastModified(timeLastModified_);
end;
    

constructor TTimeLastModifiedView.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.setTimeLastModified(TTimeLastModified.Create(TDomNodeHelper.getTextNodeValue(node_)));
end;
    

// throws Exception
function TTimeLastModifiedView.toXmlNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createTextNode(document_, TEntryData.getInstance().TIMECREATED, Self.getTimeLastModified().toString()));
end;
    

function TTimeLastModifiedView.getTimeLastModified: TTimeLastModified;
begin
        Exit(Self.timeLastModified);
end;
    

procedure TTimeLastModifiedView.setTimeLastModified(timeLastModified_: TTimeLastModified);
begin
        Self.timeLastModified := timeLastModified_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

