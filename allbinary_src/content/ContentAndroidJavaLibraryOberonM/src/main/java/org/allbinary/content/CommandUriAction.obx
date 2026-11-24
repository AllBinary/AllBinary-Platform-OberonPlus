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
// package org.allbinary.content
unit CommandUriAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, Intent, LogUtil, ABHashtable;

type
  {AB:TYPES}
  TCommandUriAction = class(TObject)
  public
    logUtil: TLogUtil;
    hashtable: TABHashtable<TObject, TObject>;
    class var instance: TCommandUriAction;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommandUriAction; static;
        procedure add(command_: TCommand; url: string); virtual;
        procedure process(command_: TCommand); virtual;
        function getIntent(command_: TCommand): TIntent; virtual;
  end;

implementation
uses
  Uri, ResourceUtil, StdUtil, CommonStrings;


{AB:CODE}

procedure TCommandUriAction.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;

constructor TCommandUriAction.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommandUriAction.getInstance: TCommandUriAction;
begin
        Exit(TCommandUriAction.instance);
end;
    

procedure TCommandUriAction.add(command_: TCommand; url: string);
begin
        Self.hashtable.put(TJava.Box(command_), TJava.Box(url));
end;
    

procedure TCommandUriAction.process(command_: TCommand);
var
  intent_: TIntent;
  commonStrings_: TCommonStrings;
begin
        try
            intent_ := Self.getIntent(command_);
            TResourceUtil.getInstance().getContext().startActivity(intent_);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

function TCommandUriAction.getIntent(command_: TCommand): TIntent;
var
  url: string;
  uri_: TUri;
  intent_: TIntent;
begin
        url := TJava.UnboxString(TJava.ToObject(Self.hashtable.get(TJava.Box(command_))));
        uri_ := TUri.parse(url);
        intent_ := TIntent.Create(TIntent.ACTION_VIEW, uri_);
        Exit(intent_);
end;

initialization
  {AB:INITIALIZATION}
  TCommandUriAction.instance := TCommandUriAction.Create();
  {AB:END}

end.

