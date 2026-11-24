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
// package org.allbinary.input.automation.actions.script.condition
unit ProfileActionScriptConditionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Node, ProfileActionScriptConditionInterface;

type
  {AB:TYPES}
  TProfileActionScriptConditionFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(node_: TNode): IProfileActionScriptConditionInterface; static;
  end;

implementation
uses
  ColorAtActionScriptConditionData, TimeIntervalActionScriptConditionData, AlwaysActionScriptConditionData, AlwaysActionScriptCondition, TimeIntervalActionScriptCondition, ColorAtActionScriptCondition, DomSearchHelper;


{AB:CODE}
    

constructor TProfileActionScriptConditionFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TProfileActionScriptConditionFactory.getInstance(node_: TNode): IProfileActionScriptConditionInterface;
var
  profileActionScriptConditionInterface_: IProfileActionScriptConditionInterface;
begin
        profileActionScriptConditionInterface_ := nil;
        if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TColorAtActionScriptConditionData.NAME, node_.getChildNodes())) then begin
            profileActionScriptConditionInterface_ := TColorAtActionScriptCondition.Create(node_);
        end else if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TTimeIntervalActionScriptConditionData.NAME, node_.getChildNodes())) then begin
            profileActionScriptConditionInterface_ := TTimeIntervalActionScriptCondition.Create(node_);
        end else if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TAlwaysActionScriptConditionData.NAME, node_.getChildNodes())) then begin
            profileActionScriptConditionInterface_ := TAlwaysActionScriptCondition.Create(node_);
        end;
        Exit(profileActionScriptConditionInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

