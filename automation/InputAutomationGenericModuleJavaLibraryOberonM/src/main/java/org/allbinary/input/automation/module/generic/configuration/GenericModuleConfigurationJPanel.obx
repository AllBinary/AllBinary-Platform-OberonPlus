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
// package org.allbinary.input.automation.module.generic.configuration
unit GenericModuleConfigurationJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericProfile, GenericProfiles, LogUtil, StringUtil, CommonStrings, ActionEvent, JPanel, ListSelectionEvent, ButtonGroup, JCheckBox, JButton, JTabbedPane, JList, JScrollPane, JLabel, JDialog, JTextField, JRadioButton, GenericModuleConfigurationInterface;

type
  {AB:TYPES}
  TGenericModuleConfigurationJPanel = class(TJPanel, IGenericModuleConfigurationInterface)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    genericProfiles: TGenericProfiles;
    selectedGenericProfile: TGenericProfile;
    blankGenericProfileActionsJPanel: TJPanel;
    buttonGroup2: TButtonGroup;
    captureComparisonJCheckBox: TJCheckBox;
    captureMotionAnalysisJCheckBox: TJCheckBox;
    deleteProfileJButton: TJButton;
    genericJTabbedPane: TJTabbedPane;
    genericProfilesJList: TJList;
    genericProfilesJPanel: TJPanel;
    genericProfilesJScrollPane: TJScrollPane;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jPanel1: TJPanel;
    newProfileJButton: TJButton;
    newProfileJDialog: TJDialog;
    newProfileNameJLabel: TJLabel;
    newProfileNameJTextField: TJTextField;
    okNewProfileJButton: TJButton;
    savedCaptureJRadioButton: TJRadioButton;
    screenCaptureJRadioButton: TJRadioButton;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure initComponents;
        procedure savedCaptureJRadioButtonActionPerformed(evt: TActionEvent);
        procedure screenCaptureJRadioButtonActionPerformed(evt: TActionEvent);
        procedure captureMotionAnalysisJCheckBoxActionPerformed(evt: TActionEvent);
        procedure captureComparisonJCheckBoxActionPerformed(evt: TActionEvent);
        procedure updateProfileUI(profileNameString: string);
        procedure selectFirstElement;
        procedure updateProfileOptions;
        function getBlankGenericProfileActionsJPanel: TJPanel; virtual;
        procedure setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel: TJPanel); virtual;
        function getGenericProfiles: TGenericProfiles;
        procedure setGenericProfiles(genericProfiles_: TGenericProfiles);
        function getSelectedGenericProfile: TGenericProfile; virtual;
        procedure setSelectedGenericProfile(selectedGenericProfile: TGenericProfile); virtual;
        procedure genericProfilesJListValueChanged(evt: TListSelectionEvent);
        procedure deleteProfileJButtonActionPerformed(evt: TActionEvent);
        procedure okNewProfileJButtonActionPerformed(evt: TActionEvent);
        procedure newProfileJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, GridLayout, ListSelectionListener, Insets, BasicArrayList, BasicArrayListD, GenericProfileDataWorkerType, GenericProfileActions, GenericProfileActionsJPanel;


{AB:CODE}

procedure TGenericModuleConfigurationJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TGenericModuleConfigurationJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericModuleConfigurationJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setGenericProfiles(TGenericProfiles.Create(TGenericProfiles.DEFAULT_FILE));
        Self.selectFirstElement();
end;
    

procedure TGenericModuleConfigurationJPanel.initComponents;
var
  newProfileJDialogLayout: TGroupLayout;
  jPanel1Layout: TGroupLayout;
  genericProfilesJPanelLayout: TGroupLayout;
  blankGenericProfileActionsJPanelLayout: TGroupLayout;
begin
        Self.newProfileJDialog := TJDialog.Create();
        Self.okNewProfileJButton := TJButton.Create();
        Self.newProfileNameJLabel := TJLabel.Create();
        Self.newProfileNameJTextField := TJTextField.Create();
        Self.buttonGroup2 := TButtonGroup.Create();
        Self.genericJTabbedPane := TJTabbedPane.Create();
        Self.genericProfilesJPanel := TJPanel.Create();
        Self.genericProfilesJScrollPane := TJScrollPane.Create();
        Self.genericProfilesJList := TJList.Create();
        Self.newProfileJButton := TJButton.Create();
        Self.deleteProfileJButton := TJButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.screenCaptureJRadioButton := TJRadioButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.savedCaptureJRadioButton := TJRadioButton.Create();
        Self.captureMotionAnalysisJCheckBox := TJCheckBox.Create();
        Self.captureComparisonJCheckBox := TJCheckBox.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.blankGenericProfileActionsJPanel := TJPanel.Create();
        Self.newProfileJDialog.setMinimumSize(TDimension.Create(250, 150));
        Self.newProfileJDialog.setResizable(False);
        Self.okNewProfileJButton.setText('Ok');
        Self.okNewProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okNewProfileJButtonActionPerformed(evt);
end;
*));
        Self.newProfileNameJLabel.setText('New Profile Name');
        newProfileJDialogLayout := TGroupLayout.Create(Self.newProfileJDialog.getContentPane());
        Self.newProfileJDialog.getContentPane().setLayout(newProfileJDialogLayout);
        newProfileJDialogLayout.setHorizontalGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(80, 80, 80).addComponent(Self.newProfileNameJLabel)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(30, 30, 30).addComponent(Self.newProfileNameJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 180, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(100, 100, 100).addComponent(Self.okNewProfileJButton))).addContainerGap(35, TShort.MAX_VALUE)));
        newProfileJDialogLayout.setVerticalGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(10, 10, 10).addComponent(Self.newProfileNameJLabel).addGap(16, 16, 16).addComponent(Self.newProfileNameJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(20, 20, 20).addComponent(Self.okNewProfileJButton)));
        Self.setLayout(TGridLayout.Create(1, 0));
        Self.setMinimumSize(TDimension.Create(400, 300));
        Self.setPreferredSize(TDimension.Create(700, 700));
        Self.genericJTabbedPane.setToolTipText(Self.stringUtil.EMPTY_STRING);
        Self.genericJTabbedPane.setMinimumSize(TDimension.Create(800, 600));
        Self.genericProfilesJPanel.setMinimumSize(TDimension.Create(400, 300));
        Self.genericProfilesJPanel.setPreferredSize(TDimension.Create(0, 0));
        Self.genericProfilesJList.addListSelectionListener(TListSelectionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.valueChanged(evt: TListSelectionEvent);
begin
                Self.genericProfilesJListValueChanged(evt);
end;
*));
        Self.genericProfilesJScrollPane.setViewportView(Self.genericProfilesJList);
        Self.newProfileJButton.setText('New');
        Self.newProfileJButton.setToolTipText('Creates a new profile');
        Self.newProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newProfileJButtonActionPerformed(evt);
end;
*));
        Self.deleteProfileJButton.setText('Delete');
        Self.deleteProfileJButton.setToolTipText('Deletes the selected profile');
        Self.deleteProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.deleteProfileJButtonActionPerformed(evt);
end;
*));
        Self.jPanel1.setPreferredSize(TDimension.Create(1000, 100));
        Self.screenCaptureJRadioButton.setText('Screen Captures');
        Self.screenCaptureJRadioButton.setToolTipText('Records the screen into memory for logical processing');
        Self.screenCaptureJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.screenCaptureJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.screenCaptureJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.screenCaptureJRadioButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Profile Options');
        Self.jLabel2.setText('Process From:');
        Self.savedCaptureJRadioButton.setText('Saved Images');
        Self.savedCaptureJRadioButton.setToolTipText('Loads images from files for logical processing.  Usually for debugging your profile actions');
        Self.savedCaptureJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.savedCaptureJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.savedCaptureJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.savedCaptureJRadioButtonActionPerformed(evt);
end;
*));
        Self.captureMotionAnalysisJCheckBox.setText('Motion Analysis');
        Self.captureMotionAnalysisJCheckBox.setToolTipText('Uses image comparison and contraints to locate moving objects');
        Self.captureMotionAnalysisJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.captureMotionAnalysisJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.captureMotionAnalysisJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.captureMotionAnalysisJCheckBoxActionPerformed(evt);
end;
*));
        Self.captureComparisonJCheckBox.setText('Comparison');
        Self.captureComparisonJCheckBox.setToolTipText('Compares the last two input images for multi image logic');
        Self.captureComparisonJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.captureComparisonJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.captureComparisonJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.captureComparisonJCheckBoxActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Image Processing:');
        Self.jLabel3.setToolTipText('Turns on/off various extended image processing');
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.screenCaptureJRadioButton).addComponent(Self.jLabel1).addComponent(Self.jLabel2).addComponent(Self.savedCaptureJRadioButton).addComponent(Self.captureMotionAnalysisJCheckBox).addComponent(Self.captureComparisonJCheckBox).addComponent(Self.jLabel3)).addContainerGap(22, TShort.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel2).addGap(7, 7, 7).addComponent(Self.screenCaptureJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.savedCaptureJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel3).addGap(7, 7, 7).addComponent(Self.captureComparisonJCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.captureMotionAnalysisJCheckBox).addContainerGap(106, TShort.MAX_VALUE)));
        genericProfilesJPanelLayout := TGroupLayout.Create(Self.genericProfilesJPanel);
        Self.genericProfilesJPanel.setLayout(genericProfilesJPanelLayout);
        genericProfilesJPanelLayout.setHorizontalGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(Self.newProfileJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.deleteProfileJButton)).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(Self.genericProfilesJScrollPane, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 119, TShort.MAX_VALUE))).addContainerGap()));
        genericProfilesJPanelLayout.setVerticalGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.newProfileJButton).addComponent(Self.deleteProfileJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 246, TShort.MAX_VALUE).addComponent(Self.genericProfilesJScrollPane, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 246, TShort.MAX_VALUE))));
        Self.genericJTabbedPane.addTab('Profiles', Self.genericProfilesJPanel);
        blankGenericProfileActionsJPanelLayout := TGroupLayout.Create(Self.blankGenericProfileActionsJPanel);
        Self.blankGenericProfileActionsJPanel.setLayout(blankGenericProfileActionsJPanelLayout);
        blankGenericProfileActionsJPanelLayout.setHorizontalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE));
        blankGenericProfileActionsJPanelLayout.setVerticalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 275, TShort.MAX_VALUE));
        Self.genericJTabbedPane.addTab('Actions', Self.blankGenericProfileActionsJPanel);
        Self.add(Self.genericJTabbedPane);
end;
    

procedure TGenericModuleConfigurationJPanel.savedCaptureJRadioButtonActionPerformed(evt: TActionEvent);
begin
        try
            if Self.savedCaptureJRadioButton.isSelected() then begin
                Self.logUtil.putF('Selected', TJava.Box(Self), 'savedCaptureJRadioButtonActionPerformed');
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SAVED_CAPTURE);
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
                Self.screenCaptureJRadioButton.setSelected(False);
                Self.getGenericProfiles().save();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'savedCaptureJRadioButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.screenCaptureJRadioButtonActionPerformed(evt: TActionEvent);
begin
        try
            if Self.screenCaptureJRadioButton.isSelected() then begin
                Self.logUtil.putF('Selected', TJava.Box(Self), 'screenCaptureJRadioButtonActionPerformed');
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.SAVED_CAPTURE);
                Self.savedCaptureJRadioButton.setSelected(False);
                Self.getGenericProfiles().save();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'screenCaptureJRadioButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.captureMotionAnalysisJCheckBoxActionPerformed(evt: TActionEvent);
begin
        try
            if Self.captureMotionAnalysisJCheckBox.isSelected() then begin
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.MOTION);
            end else begin
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.MOTION);
            end;
            Self.getGenericProfiles().save();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'captureComparisonJCheckBoxActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.captureComparisonJCheckBoxActionPerformed(evt: TActionEvent);
begin
        try
            if Self.captureComparisonJCheckBox.isSelected() then begin
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.COMPARISON);
            end else begin
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.COMPARISON);
            end;
            Self.getGenericProfiles().save();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'captureComparisonJCheckBoxActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.updateProfileUI(profileNameString: string);
var
  genericProfileActionsJPanel_: TGenericProfileActionsJPanel;
  layout: TGroupLayout;
begin
        Self.getBlankGenericProfileActionsJPanel().removeAll();
        if (profileNameString) <> ('') then begin
            genericProfileActionsJPanel_ := TGenericProfileActionsJPanel.Create();
            Self.setSelectedGenericProfile(Self.getGenericProfiles().get(profileNameString));
            Self.getSelectedGenericProfile().setGenericProfileActions(TGenericProfileActions.Create(genericProfileActionsJPanel_, profileNameString));
            genericProfileActionsJPanel_.setGenericProfileActions(Self.getSelectedGenericProfile().getGenericProfileActions());
            genericProfileActionsJPanel_.selectFirstElement();
            layout := TGroupLayout(TJava.ToObject(Self.getBlankGenericProfileActionsJPanel().getLayout()));
            layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(genericProfileActionsJPanel_, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(genericProfileActionsJPanel_, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            Self.updateProfileOptions();
            Self.logUtil.putF('Setting Configuration Profile JPanel', TJava.Box(Self), 'updateProfileUI');
        end else begin
            Self.logUtil.putF('Null Configuration Profile', TJava.Box(Self), 'updateProfileUI');
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.selectFirstElement;
begin
        Self.genericProfilesJList.setModel(Self.getGenericProfiles().getDefaultListModelHelper().getListModel());
        if (Self.genericProfilesJList.getModel().getSize()) > (0) then begin
            Self.genericProfilesJList.setSelectedValue(Self.genericProfilesJList.getModel().getElementAt(0), True);
            Self.updateProfileUI(TJava.UnboxString(TJava.ToObject(Self.genericProfilesJList.getModel().getElementAt(0))));
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.updateProfileOptions;
var
  genericProfile_: TGenericProfile;
  vector: TBasicArrayList;
  size: Integer;
  genericProfileDataWorkerType_: TGenericProfileDataWorkerType;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'updateProfileOptions');
        genericProfile_ := Self.getSelectedGenericProfile();
        vector := genericProfile_.getGenericProfileDataWorkerTypeVector();
        Self.screenCaptureJRadioButton.setSelected(False);
        Self.savedCaptureJRadioButton.setSelected(False);
        Self.captureComparisonJCheckBox.setSelected(False);
        Self.captureMotionAnalysisJCheckBox.setSelected(False);
        size := vector.size();
        for index := 0 to size - 1 do begin
            genericProfileDataWorkerType_ := TGenericProfileDataWorkerType(TJava.ToObject(vector.get(index)));
            Self.logUtil.putF(genericProfile_.getName() + ' has GenericProfileDataWorkerType: ' + genericProfileDataWorkerType_.toString(), TJava.Box(Self), 'updateProfileOptions');
            if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.SCREEN_CAPTURE) then begin
                Self.logUtil.putF('Screen Capture Selected', TJava.Box(Self), 'updateProfileOptions');
                Self.screenCaptureJRadioButton.setSelected(True);
            end else if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.SAVED_CAPTURE) then begin
                Self.logUtil.putF('Saved Capture Selected', TJava.Box(Self), 'updateProfileOptions');
                Self.savedCaptureJRadioButton.setSelected(True);
            end else if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.COMPARISON) then begin
                Self.logUtil.putF('Checking Comparison Box', TJava.Box(Self), 'updateProfileOptions');
                Self.captureComparisonJCheckBox.setSelected(True);
            end else if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.MOTION) then begin
                Self.logUtil.putF('Checking Motion Box', TJava.Box(Self), 'updateProfileOptions');
                Self.captureMotionAnalysisJCheckBox.setSelected(True);
            end;
        end;
        if (not (Self.screenCaptureJRadioButton.isSelected())) and (not (Self.savedCaptureJRadioButton.isSelected())) then begin
            Self.screenCaptureJRadioButton.setSelected(True);
            Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
        end;
        Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), 'updateProfileOptions');
end;
    

function TGenericModuleConfigurationJPanel.getBlankGenericProfileActionsJPanel: TJPanel;
begin
        Exit(Self.blankGenericProfileActionsJPanel);
end;
    

procedure TGenericModuleConfigurationJPanel.setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel: TJPanel);
begin
        Self.blankGenericProfileActionsJPanel := blankGenericProfileActionsJPanel;
end;
    

function TGenericModuleConfigurationJPanel.getGenericProfiles: TGenericProfiles;
begin
        Exit(Self.genericProfiles);
end;
    

procedure TGenericModuleConfigurationJPanel.setGenericProfiles(genericProfiles_: TGenericProfiles);
begin
        Self.genericProfiles := genericProfiles_;
end;
    

function TGenericModuleConfigurationJPanel.getSelectedGenericProfile: TGenericProfile;
begin
        Exit(Self.selectedGenericProfile);
end;
    

procedure TGenericModuleConfigurationJPanel.setSelectedGenericProfile(selectedGenericProfile: TGenericProfile);
begin
        Self.selectedGenericProfile := selectedGenericProfile;
end;
    

procedure TGenericModuleConfigurationJPanel.genericProfilesJListValueChanged(evt: TListSelectionEvent);
var
  profileNameString: string;
begin
        try
            profileNameString := TJava.UnboxString(TJava.ToObject(Self.genericProfilesJList.getSelectedValue()));
            Self.updateProfileUI(profileNameString);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'genericProfilesJListValueChanged', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.deleteProfileJButtonActionPerformed(evt: TActionEvent);
var
  anyType: TArray<TObject>;
  nextSelectedValueString: string;
  index: Integer;
begin
        try
            anyType := Self.genericProfilesJList.getSelectedValues();
            for index := 0 to System.Length(anyType) - 1 do begin
                nextSelectedValueString := TJava.UnboxString(TJava.ToObject(anyType[index]));
                Self.getGenericProfiles().remove(nextSelectedValueString);
            end;
            Self.selectFirstElement();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'deleteProfileJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.okNewProfileJButtonActionPerformed(evt: TActionEvent);
var
  newProfileName: string;
begin
        try
            newProfileName := Self.newProfileNameJTextField.getText();
            Self.getGenericProfiles().add(TJava.BoxString(newProfileName));
            Self.genericProfilesJList.setModel(Self.getGenericProfiles().getDefaultListModelHelper().getListModel());
            Self.genericProfilesJList.setSelectedValue(newProfileName, True);
            Self.newProfileJDialog.setVisible(False);
            Self.updateProfileUI(newProfileName);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'okNewProfileJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.newProfileJButtonActionPerformed(evt: TActionEvent);
begin
        Self.newProfileJDialog.setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

