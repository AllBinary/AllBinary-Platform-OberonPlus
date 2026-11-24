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
// package org.allbinary.business.time.created
unit TimeCreatedView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, TimeCreated;

type
  {AB:TYPES}
  TTimeCreatedView = class(TInterfacedObject, IDomNodeInterface)
  public
    timeCreated: TTimeCreated;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(timeCreated_: TTimeCreated); overload;
        constructor Create(node_: TNode); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getTimeCreated: TTimeCreated; virtual;
        procedure setTimeCreated(timeCreated_: TTimeCreated); virtual;
  end;

implementation
uses
  EntryData, DomNodeHelper, ModDomHelper;


{AB:CODE}

procedure TTimeCreatedView.InitFields;
begin
  
end;

function TTimeCreatedView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTimeCreatedView.Create(timeCreated_: TTimeCreated);
begin
    inherited Create;
    InitFields;
        Self.setTimeCreated(timeCreated_);
end;
    

constructor TTimeCreatedView.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.setTimeCreated(TTimeCreated.Create(TDomNodeHelper.getTextNodeValue(node_)));
end;
    

// throws Exception
function TTimeCreatedView.toXmlNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createTextNode(document_, TEntryData.getInstance().TIMECREATED, Self.getTimeCreated().toString()));
end;
    

function TTimeCreatedView.getTimeCreated: TTimeCreated;
begin
        Exit(Self.timeCreated);
end;
    

procedure TTimeCreatedView.setTimeCreated(timeCreated_: TTimeCreated);
begin
        Self.timeCreated := timeCreated_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

