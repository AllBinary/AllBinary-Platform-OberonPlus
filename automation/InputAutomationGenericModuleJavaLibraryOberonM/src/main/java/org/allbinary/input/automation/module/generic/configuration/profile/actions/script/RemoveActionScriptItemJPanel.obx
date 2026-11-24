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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions.script
unit RemoveActionScriptItemJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ProfileActionScriptConditionInterface, GenericProfileActionJPanel, LogUtil, ActionEvent, JButton, Panel;

type
  {AB:TYPES}
  TRemoveActionScriptItemJPanel = class(TPanel)
  public
    logUtil: TLogUtil;
    genericProfileActionJPanel: TGenericProfileActionJPanel;
    profileActionScriptConditionInterface: IProfileActionScriptConditionInterface;
    removeJButton: TJButton;
    procedure InitFields;
        constructor Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; profileActionScriptConditionInterface_: IProfileActionScriptConditionInterface);
        procedure initComponents;
        procedure removeJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  GridLayout, ActionListener, GenericProfileAction;


{AB:CODE}

procedure TRemoveActionScriptItemJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TRemoveActionScriptItemJPanel.Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; profileActionScriptConditionInterface_: IProfileActionScriptConditionInterface);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.genericProfileActionJPanel := genericProfileActionJPanel_;
        Self.profileActionScriptConditionInterface := profileActionScriptConditionInterface_;
end;
    

procedure TRemoveActionScriptItemJPanel.initComponents;
begin
        Self.removeJButton := TJButton.Create();
        Self.setLayout(TGridLayout.Create());
        Self.removeJButton.setText('Remove');
        Self.removeJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.removeJButtonActionPerformed(evt);
end;
*));
        Self.add(Self.removeJButton);
end;
    

procedure TRemoveActionScriptItemJPanel.removeJButtonActionPerformed(evt: TActionEvent);
var
  genericProfileAction_: TGenericProfileAction;
begin
        genericProfileAction_ := Self.genericProfileActionJPanel.getGenericProfileAction();
        if (genericProfileAction_) = (nil) then begin
            Self.logUtil.putF('GenericProfileAction was null', TJava.Box(Self), 'removeJButtonActionPerformed');
            Exit;
        end;
        genericProfileAction_.getGenericProfileActionScript().removeCondition(Self.profileActionScriptConditionInterface);
        Self.genericProfileActionJPanel.updateProfileActionUI();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

