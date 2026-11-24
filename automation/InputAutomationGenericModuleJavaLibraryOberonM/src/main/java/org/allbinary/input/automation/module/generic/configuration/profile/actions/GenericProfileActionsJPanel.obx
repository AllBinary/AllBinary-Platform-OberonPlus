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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions
unit GenericProfileActionsJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, GenericProfileActions, GenericProfileActionJPanel, ActionEvent, ListSelectionEvent, JPanel, JButton, JList, JScrollPane, JDialog, JLabel, JTextField;

type
  {AB:TYPES}
  TGenericProfileActionsJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    genericProfileActions: TGenericProfileActions;
    genericProfileActionJPanel: TGenericProfileActionJPanel;
    blankGenericProfileActionJPanel: TJPanel;
    deleteActionJButton: TJButton;
    genericProfileActionsJList: TJList;
    genericProfileActionsJPanel: TJPanel;
    genericProfileActionsJScrollPane: TJScrollPane;
    newActionJButton: TJButton;
    newProfileActionJDialog: TJDialog;
    newProfileActionJLabel: TJLabel;
    newProfileActionJTextField: TJTextField;
    okNewProfileActionJButton: TJButton;
    saveJButton: TJButton;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure setModel; virtual;
        procedure saveJButtonActionPerformed(evt: TActionEvent);
        procedure updateProfileActionUI(profileActionNameString: string);
        procedure genericProfileActionsJListValueChanged(evt: TListSelectionEvent);
        procedure okNewProfileActionJButtonActionPerformed(evt: TActionEvent);
        procedure deleteActionJButtonActionPerformed(evt: TActionEvent);
        procedure selectFirstElement; virtual;
        function getGenericProfileActionJPanel: TGenericProfileActionJPanel; virtual;
        procedure setGenericProfileActionJPanel(genericProfileActionJPanel_: TGenericProfileActionJPanel); virtual;
        function getGenericProfileActions: TGenericProfileActions; virtual;
        procedure setGenericProfileActions(genericProfileActions_: TGenericProfileActions); virtual;
        procedure newActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, ListSelectionListener, GenericProfileAction, DefaultListModelHelper;


{AB:CODE}

procedure TGenericProfileActionsJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TGenericProfileActionsJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
end;
    

procedure TGenericProfileActionsJPanel.initComponents;
var
  newProfileActionJDialogLayout: TGroupLayout;
  blankGenericProfileActionJPanelLayout: TGroupLayout;
  genericProfileActionsJPanelLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.newProfileActionJDialog := TJDialog.Create();
        Self.newProfileActionJLabel := TJLabel.Create();
        Self.okNewProfileActionJButton := TJButton.Create();
        Self.newProfileActionJTextField := TJTextField.Create();
        Self.genericProfileActionsJPanel := TJPanel.Create();
        Self.genericProfileActionsJScrollPane := TJScrollPane.Create();
        Self.genericProfileActionsJList := TJList.Create();
        Self.newActionJButton := TJButton.Create();
        Self.deleteActionJButton := TJButton.Create();
        Self.saveJButton := TJButton.Create();
        Self.blankGenericProfileActionJPanel := TJPanel.Create();
        Self.newProfileActionJDialog.setMinimumSize(TDimension.Create(250, 150));
        Self.newProfileActionJDialog.setResizable(False);
        Self.newProfileActionJLabel.setText('New Action Name');
        Self.okNewProfileActionJButton.setText('Ok');
        Self.okNewProfileActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okNewProfileActionJButtonActionPerformed(evt);
end;
*));
        newProfileActionJDialogLayout := TGroupLayout.Create(Self.newProfileActionJDialog.getContentPane());
        Self.newProfileActionJDialog.getContentPane().setLayout(newProfileActionJDialogLayout);
        newProfileActionJDialogLayout.setHorizontalGroup(newProfileActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGroup(newProfileActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(93, 93, 93).addComponent(Self.okNewProfileActionJButton)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(75, 75, 75).addComponent(Self.newProfileActionJLabel)).addGroup(newProfileActionJDialogLayout.createSequentialGroup().addGap(29, 29, 29).addComponent(Self.newProfileActionJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 178, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap(34, TShort.MAX_VALUE)));
        newProfileActionJDialogLayout.setVerticalGroup(newProfileActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, newProfileActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.newProfileActionJLabel).addGap(21, 21, 21).addComponent(Self.newProfileActionJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, TShort.MAX_VALUE).addComponent(Self.okNewProfileActionJButton).addContainerGap()));
        Self.genericProfileActionsJPanel.setPreferredSize(TDimension.Create(10000, 10000));
        Self.genericProfileActionsJList.addListSelectionListener(TListSelectionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.valueChanged(evt: TListSelectionEvent);
begin
                Self.genericProfileActionsJListValueChanged(evt);
end;
*));
        Self.genericProfileActionsJScrollPane.setViewportView(Self.genericProfileActionsJList);
        Self.newActionJButton.setText('New');
        Self.newActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newActionJButtonActionPerformed(evt);
end;
*));
        Self.deleteActionJButton.setText('Delete');
        Self.deleteActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.deleteActionJButtonActionPerformed(evt);
end;
*));
        Self.saveJButton.setText('Save');
        Self.saveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.saveJButtonActionPerformed(evt);
end;
*));
        Self.blankGenericProfileActionJPanel.setMinimumSize(TDimension.Create(500, 300));
        blankGenericProfileActionJPanelLayout := TGroupLayout.Create(Self.blankGenericProfileActionJPanel);
        Self.blankGenericProfileActionJPanel.setLayout(blankGenericProfileActionJPanelLayout);
        blankGenericProfileActionJPanelLayout.setHorizontalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 500, TShort.MAX_VALUE));
        blankGenericProfileActionJPanelLayout.setVerticalGroup(blankGenericProfileActionJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 296, TShort.MAX_VALUE));
        genericProfileActionsJPanelLayout := TGroupLayout.Create(Self.genericProfileActionsJPanel);
        Self.genericProfileActionsJPanel.setLayout(genericProfileActionsJPanelLayout);
        genericProfileActionsJPanelLayout.setHorizontalGroup(genericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(Self.genericProfileActionsJScrollPane, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 95, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.blankGenericProfileActionJPanel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addComponent(Self.newActionJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.deleteActionJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.saveJButton).addContainerGap()));
        genericProfileActionsJPanelLayout.setVerticalGroup(genericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfileActionsJPanelLayout.createSequentialGroup().addGroup(genericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.newActionJButton).addComponent(Self.deleteActionJButton).addComponent(Self.saveJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(genericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.blankGenericProfileActionJPanel, 0, 296, TShort.MAX_VALUE).addComponent(Self.genericProfileActionsJScrollPane, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 296, TShort.MAX_VALUE)).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.genericProfileActionsJPanel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 596, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.genericProfileActionsJPanel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 336, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
end;
    

procedure TGenericProfileActionsJPanel.setModel;
var
  defaultListModelHelper_: TDefaultListModelHelper;
begin
        defaultListModelHelper_ := Self.getGenericProfileActions().getDefaultListModelHelper();
        if (defaultListModelHelper_.getListModel().getSize()) > (0) then begin
            Self.genericProfileActionsJList.setModel(defaultListModelHelper_.getListModel());
        end;
end;
    

procedure TGenericProfileActionsJPanel.saveJButtonActionPerformed(evt: TActionEvent);
begin
        try
            Self.getGenericProfileActions().save();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'saveJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericProfileActionsJPanel.updateProfileActionUI(profileActionNameString: string);
var
  genericProfileAction_: TGenericProfileAction;
  layout: TGroupLayout;
begin
        Self.blankGenericProfileActionJPanel.removeAll();
        if (profileActionNameString) <> ('') then begin
            genericProfileAction_ := Self.getGenericProfileActions().getAction(profileActionNameString);
            Self.setGenericProfileActionJPanel(TGenericProfileActionJPanel.Create());
            Self.getGenericProfileActionJPanel().setGenericProfileAction(genericProfileAction_);
            Self.getGenericProfileActionJPanel().updateProfileActionUI();
            layout := TGroupLayout(TJava.ToObject(Self.blankGenericProfileActionJPanel.getLayout()));
            layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(Self.getGenericProfileActionJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(Self.getGenericProfileActionJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            Self.logUtil.putF('Setting Configuration Profile Actions JPanel', TJava.Box(Self), 'genericProfileActionsJListValueChanged');
        end;
end;
    

procedure TGenericProfileActionsJPanel.genericProfileActionsJListValueChanged(evt: TListSelectionEvent);
var
  profileActionNameString: string;
begin
        try
            profileActionNameString := TJava.UnboxString(TJava.ToObject(Self.genericProfileActionsJList.getSelectedValue()));
            Self.updateProfileActionUI(profileActionNameString);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'genericProfileActionsJListValueChanged', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericProfileActionsJPanel.okNewProfileActionJButtonActionPerformed(evt: TActionEvent);
var
  newActionName: string;
begin
        try
            newActionName := Self.newProfileActionJTextField.getText();
            Self.getGenericProfileActions().add(TJava.BoxString(newActionName));
            Self.setModel();
            Self.genericProfileActionsJList.setSelectedValue(newActionName, True);
            Self.newProfileActionJDialog.setVisible(False);
            Self.updateProfileActionUI(newActionName);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'okNewProfileActionJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericProfileActionsJPanel.deleteActionJButtonActionPerformed(evt: TActionEvent);
var
  anyType: TArray<TObject>;
  nextSelectedValueString: string;
  index: Integer;
begin
        try
            anyType := Self.genericProfileActionsJList.getSelectedValues();
            for index := 0 to System.Length(anyType) - 1 do begin
                nextSelectedValueString := TJava.UnboxString(TJava.ToObject(anyType[index]));
                Self.getGenericProfileActions().remove(nextSelectedValueString);
            end;
            Self.selectFirstElement();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'deleteActionJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TGenericProfileActionsJPanel.selectFirstElement;
begin
        Self.setModel();
        if (Self.genericProfileActionsJList.getModel().getSize()) > (0) then begin
            Self.genericProfileActionsJList.setSelectedValue(Self.genericProfileActionsJList.getModel().getElementAt(0), True);
            Self.updateProfileActionUI(TJava.UnboxString(TJava.ToObject(Self.genericProfileActionsJList.getModel().getElementAt(0))));
        end else begin
            Self.blankGenericProfileActionJPanel.removeAll();
            Self.blankGenericProfileActionJPanel.repaint();
        end;
end;
    

function TGenericProfileActionsJPanel.getGenericProfileActionJPanel: TGenericProfileActionJPanel;
begin
        Exit(Self.genericProfileActionJPanel);
end;
    

procedure TGenericProfileActionsJPanel.setGenericProfileActionJPanel(genericProfileActionJPanel_: TGenericProfileActionJPanel);
begin
        Self.genericProfileActionJPanel := genericProfileActionJPanel_;
end;
    

function TGenericProfileActionsJPanel.getGenericProfileActions: TGenericProfileActions;
begin
        Exit(Self.genericProfileActions);
end;
    

procedure TGenericProfileActionsJPanel.setGenericProfileActions(genericProfileActions_: TGenericProfileActions);
begin
        Self.genericProfileActions := genericProfileActions_;
end;
    

procedure TGenericProfileActionsJPanel.newActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.newProfileActionJDialog.setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

