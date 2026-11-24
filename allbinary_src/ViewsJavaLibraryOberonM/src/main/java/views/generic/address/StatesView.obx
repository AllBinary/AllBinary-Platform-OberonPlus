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
// package views.generic.address
unit StatesView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TStatesView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StreetAddressData, ModDomHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, LineReader;


{AB:CODE}

procedure TStatesView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TStatesView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStatesView.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TStatesView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  statesFile: string;
  lineReader_: TLineReader;
  option: string;
begin
        try
            node_ := document_.createElement(TStreetAddressData.STATES);
            statesFile := TJava.ToString((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().LINEDATAPATH)) + 'states.txt';
            lineReader_ := TLineReader.Create(statesFile);
            while lineReader_.hasNext() do begin
                option := lineReader_.next();
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, TStreetAddressData.STATE, option));
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

