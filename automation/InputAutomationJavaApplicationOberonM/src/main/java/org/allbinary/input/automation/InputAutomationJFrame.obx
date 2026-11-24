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
// package org.allbinary.input.automation
unit InputAutomationJFrame;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationBundleActivatorListenerInterface, InputAutomationConfigurationModuleChangeListener, InputAutomationRobotChangeListener, InputAutomationConfigurationModuleChangeEvent, InputAutomationModuleFactoryFactory, InputAutomationModuleFactoryInterface, InputAutomationModuleConfigurations, InputAutomationRobotChangeEvent, LogUtil, CommonStrings, RunnableInterface, ActionEvent, WindowEvent, FocusEvent, ListSelectionEvent, JPanel, JMenuItem, JTabbedPane, JList, JScrollPane, JMenuBar, JLabel, JMenu, JCheckBoxMenuItem, JFrame;

type
  {AB:TYPES}
  TInputAutomationJFrame = class(TJFrame, IInputAutomationConfigurationModuleChangeListener, IInputAutomationRobotChangeListener, IHelpSetListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputAutomationModuleConfigurations: TInputAutomationModuleConfigurations;
    inputAutomationModuleFactory: TInputAutomationModuleFactoryFactory;
    inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface;
    runnableInterface: IRunnableInterface;
    thread: TThread;
    helpSet: THelpSet;
    uri: TURI;
    aboutJMenuItem: TJMenuItem;
    automationModuleConfigurationJPanel: TJPanel;
    gameRobotJTabbedPane: TJTabbedPane;
    helpJMenuItem: TJMenuItem;
    inputAutomationModuleJList: TJList;
    inputAutomationModuleJPanel: TJPanel;
    jScrollPane1: TJScrollPane;
    mainJMenuBar: TJMenuBar;
    modulesJMenuItem: TJMenuItem;
    noModuleSelectedJDialog: TJDialog;
    noModuleSelectedJLabel: TJLabel;
    optionsJMenu: TJMenu;
    processingJMenu: TJMenu;
    startJMenuItem: TJMenuItem;
    stopJMenuItem: TJMenuItem;
    stopOnFocusJCheckBoxMenuItem: TJCheckBoxMenuItem;
    subscriptionJMenuItem: TJMenuItem;
    toolsJMenu: TJMenu;
    updatesJMenuItem: TJMenuItem;
    class var INPUTAUTOMATION_JFRAME: TInputAutomationJFrame;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure helpSetAdded(helpSetEvent_: THelpSetEvent); virtual;
        procedure helpSetRemoved(helpSetEvent_: THelpSetEvent); virtual;
        procedure init;
        procedure initComponents;
        procedure subscriptionJMenuItemActionPerformed(evt: TActionEvent);
        procedure updatesJMenuItemActionPerformed(evt: TActionEvent);
        procedure aboutJMenuItemActionPerformed(evt: TActionEvent);
        procedure modulesJMenuItemActionPerformed(evt: TActionEvent);
        procedure helpJMenuItemActionPerformed(evt: TActionEvent);
        procedure stopOnFocusJCheckBoxMenuItemActionPerformed(evt: TActionEvent);
        procedure optionsJMenuActionPerformed(evt: TActionEvent);
        procedure formWindowLostFocus(evt: TWindowEvent);
        procedure formWindowGainedFocus(evt: TWindowEvent);
        procedure formFocusLost(evt: TFocusEvent);
        procedure formFocusGained(evt: TFocusEvent);
        procedure inputAutomationModuleJListValueChanged(evt: TListSelectionEvent);
        procedure stopJMenuItemActionPerformed(evt: TActionEvent);
        procedure startJMenuItemActionPerformed(evt: TActionEvent);
        class function getInstance: TInputAutomationJFrame; static;
        class procedure destroy; static;
        class procedure create_(inputAutomationBundleActivatorListenerInterface_: IInputAutomationBundleActivatorListenerInterface); static;
        class procedure main(args: TArray<string>); static;
        function getAutomationModuleConfigurationJPanel: TJPanel; virtual;
        procedure setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel: TJPanel); virtual;
        procedure onAdd(inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent); overload; virtual;
        procedure onRemove(inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent); overload; virtual;
        procedure onAdd(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent); overload; virtual;
        procedure onRemove(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent); overload; virtual;
  end;

implementation
uses
  Dimension, GroupLayout, WindowFocusListener, FocusAdapter, ListSelectionListener, ActionListener, ARunnable, AppUrlGlobals, URLGLOBALS, BasicTextJDialog, JListSwingWorker, InputAutomationConfiguration, InputAutomationConfigurationFactory, InputAutomationModuleConfiguration, DesktopBundle, InputRobotFactory, LogConfigTypeFactory, JavaHelpUtil, WebappClassLoaderInfo, InputAutomationClientInformationFactory;


{AB:CODE}

procedure TInputAutomationJFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.inputAutomationModuleConfigurations := TInputAutomationModuleConfigurations.Create();
  
  
  
  
  
  Self.uri := TURI.Create('http://geocities.com/allbinary/');
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TInputAutomationJFrame.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationJFrame.Create;
var
  url_: TURL;
  imageIcon_: TImageIcon;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        url_ := Self.ClassType.getResource('/help/Help.hs');
        Self.logUtil.putF('URL: ' + TJava.ToString(url_), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.helpSet := TJavaHelpUtil.getInstance().getHelpSet(url_);
        url_ := Self.ClassType.getResource('/resources/allbinaryicon8bit.jpg');
        imageIcon_ := TImageIcon.Create(url_);
        Self.setIconImage(imageIcon_.getImage());
        Self.init();
end;
    

procedure TInputAutomationJFrame.helpSetAdded(helpSetEvent_: THelpSetEvent);
begin
        Self.helpSet.add(helpSetEvent_.getHelpSet());
end;
    

procedure TInputAutomationJFrame.helpSetRemoved(helpSetEvent_: THelpSetEvent);
begin
        Self.helpSet.remove(helpSetEvent_.getHelpSet());
end;
    

// throws Exception
procedure TInputAutomationJFrame.init;
var
  inputAutomationConfigurationFactory_: TInputAutomationConfigurationFactory;
  inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
begin
        inputAutomationConfigurationFactory_ := TInputAutomationConfigurationFactory.getInstance();
        inputAutomationConfigurationFactory_.init(TInputAutomationClientInformationFactory.getInstance());
        inputAutomationModuleConfigurationList := inputAutomationConfigurationFactory_.inputAutomationConfiguration.getInputAutomationModuleConfigurationList();
        if (inputAutomationModuleConfigurationList) = (nil) then begin
        end else begin
            Self.inputAutomationModuleConfigurations := TInputAutomationModuleConfigurations.Create(inputAutomationModuleConfigurationList);
        end;
        Self.inputAutomationModuleFactory := TInputAutomationModuleFactoryFactory.Create(Self.inputAutomationModuleConfigurations, Self);
        (TJListSwingWorker.Create(Self.inputAutomationModuleJList, Self.inputAutomationModuleFactory.getListModel())).execute();
        Self.gameRobotJTabbedPane.setEnabledAt(1, False);
        Self.gameRobotJTabbedPane.setSelectedIndex(0);
end;
    

procedure TInputAutomationJFrame.initComponents;
var
  noModuleSelectedJDialogLayout: TGroupLayout;
  inputAutomationModuleJPanelLayout: TGroupLayout;
  automationModuleConfigurationJPanelLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.noModuleSelectedJDialog := TJDialog.Create();
        Self.noModuleSelectedJLabel := TJLabel.Create();
        Self.gameRobotJTabbedPane := TJTabbedPane.Create();
        Self.inputAutomationModuleJPanel := TJPanel.Create();
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.inputAutomationModuleJList := TJList.Create();
        Self.automationModuleConfigurationJPanel := TJPanel.Create();
        Self.mainJMenuBar := TJMenuBar.Create();
        Self.processingJMenu := TJMenu.Create();
        Self.startJMenuItem := TJMenuItem.Create();
        Self.stopJMenuItem := TJMenuItem.Create();
        Self.optionsJMenu := TJMenu.Create();
        Self.stopOnFocusJCheckBoxMenuItem := TJCheckBoxMenuItem.Create();
        Self.toolsJMenu := TJMenu.Create();
        Self.helpJMenuItem := TJMenuItem.Create();
        Self.updatesJMenuItem := TJMenuItem.Create();
        Self.subscriptionJMenuItem := TJMenuItem.Create();
        Self.modulesJMenuItem := TJMenuItem.Create();
        Self.aboutJMenuItem := TJMenuItem.Create();
        Self.noModuleSelectedJDialog.setMinimumSize(TDimension.Create(200, 100));
        Self.noModuleSelectedJLabel.setText('Please Select A Module');
        noModuleSelectedJDialogLayout := TGroupLayout.Create(Self.noModuleSelectedJDialog.getContentPane());
        Self.noModuleSelectedJDialog.getContentPane().setLayout(noModuleSelectedJDialogLayout);
        noModuleSelectedJDialogLayout.setHorizontalGroup(noModuleSelectedJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(noModuleSelectedJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.noModuleSelectedJLabel).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        noModuleSelectedJDialogLayout.setVerticalGroup(noModuleSelectedJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.noModuleSelectedJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 48, TShort.MAX_VALUE));
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.EXIT_ON_CLOSE);
        Self.setMinimumSize(TDimension.Create(325, 215));
        Self.setResizable(False);
        Self.addWindowFocusListener(TWindowFocusListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.windowGainedFocus(evt: TWindowEvent);
begin
                Self.formWindowGainedFocus(evt);
end;
            

        procedure T.windowLostFocus(evt: TWindowEvent);
begin
                Self.formWindowLostFocus(evt);
end;
*));
        Self.addFocusListener(TFocusAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.focusGained(evt: TFocusEvent);
begin
                Self.formFocusGained(evt);
end;
            

        procedure T.focusLost(evt: TFocusEvent);
begin
                Self.formFocusLost(evt);
end;
*));
        Self.gameRobotJTabbedPane.setMinimumSize(TDimension.Create(320, 200));
        Self.inputAutomationModuleJList.setMinimumSize(TDimension.Create(200, 0));
        Self.inputAutomationModuleJList.addListSelectionListener(TListSelectionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.valueChanged(evt: TListSelectionEvent);
begin
                Self.inputAutomationModuleJListValueChanged(evt);
end;
*));
        Self.jScrollPane1.setViewportView(Self.inputAutomationModuleJList);
        inputAutomationModuleJPanelLayout := TGroupLayout.Create(Self.inputAutomationModuleJPanel);
        Self.inputAutomationModuleJPanel.setLayout(inputAutomationModuleJPanelLayout);
        inputAutomationModuleJPanelLayout.setHorizontalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 199, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(367, TShort.MAX_VALUE)));
        inputAutomationModuleJPanelLayout.setVerticalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 330, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        Self.gameRobotJTabbedPane.addTab('Modules', Self.inputAutomationModuleJPanel);
        automationModuleConfigurationJPanelLayout := TGroupLayout.Create(Self.automationModuleConfigurationJPanel);
        Self.automationModuleConfigurationJPanel.setLayout(automationModuleConfigurationJPanelLayout);
        automationModuleConfigurationJPanelLayout.setHorizontalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 566, TShort.MAX_VALUE));
        automationModuleConfigurationJPanelLayout.setVerticalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 334, TShort.MAX_VALUE));
        Self.gameRobotJTabbedPane.addTab('Configuration', Self.automationModuleConfigurationJPanel);
        Self.processingJMenu.setText('Processing');
        Self.processingJMenu.setToolTipText('Set module processing state');
        Self.startJMenuItem.setText(Self.commonStrings.START);
        Self.startJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.startJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.startJMenuItem);
        Self.stopJMenuItem.setText('Stop');
        Self.stopJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.stopJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.stopJMenuItem);
        Self.mainJMenuBar.add(Self.processingJMenu);
        Self.optionsJMenu.setText('Options');
        Self.optionsJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.optionsJMenuActionPerformed(evt);
end;
*));
        Self.stopOnFocusJCheckBoxMenuItem.setSelected(True);
        Self.stopOnFocusJCheckBoxMenuItem.setEnabled(False);
        Self.stopOnFocusJCheckBoxMenuItem.setLabel('Stop Module On Focus');
        Self.stopOnFocusJCheckBoxMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.stopOnFocusJCheckBoxMenuItemActionPerformed(evt);
end;
*));
        Self.optionsJMenu.add(Self.stopOnFocusJCheckBoxMenuItem);
        Self.mainJMenuBar.add(Self.optionsJMenu);
        Self.toolsJMenu.setText('Help');
        Self.helpJMenuItem.setText('Help');
        Self.helpJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.helpJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.helpJMenuItem);
        Self.updatesJMenuItem.setText('Updates');
        Self.updatesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.updatesJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.updatesJMenuItem);
        Self.subscriptionJMenuItem.setText('Subscription');
        Self.subscriptionJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.subscriptionJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.subscriptionJMenuItem);
        Self.modulesJMenuItem.setText('Module Manager');
        Self.modulesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.modulesJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.modulesJMenuItem);
        Self.aboutJMenuItem.setText('About');
        Self.aboutJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.aboutJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.aboutJMenuItem);
        Self.mainJMenuBar.add(Self.toolsJMenu);
        Self.setJMenuBar(Self.mainJMenuBar);
        layout := TGroupLayout.Create(Self.getContentPane());
        Self.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.gameRobotJTabbedPane, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 571, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.gameRobotJTabbedPane, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 359, TShort.MAX_VALUE));
        Self.pack();
end;
    

procedure TInputAutomationJFrame.subscriptionJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktop.getDesktop().browse(Self.uri);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'subscriptionJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.updatesJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktop.getDesktop().browse(Self.uri);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updatesJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.aboutJMenuItemActionPerformed(evt: TActionEvent);
var
  textJDialog: TJDialog;
begin
        textJDialog := TBasicTextJDialog.Create('Copyright (c) 2002-2007 AllBinary');
        textJDialog.setVisible(True);
        textJDialog.setLocationRelativeTo(Self);
end;
    

procedure TInputAutomationJFrame.modulesJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktopBundle.Create().start();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'modulesJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.helpJMenuItemActionPerformed(evt: TActionEvent);
begin
        TJavaHelpUtil.getInstance().show(Self.helpSet);
end;
    

procedure TInputAutomationJFrame.stopOnFocusJCheckBoxMenuItemActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TInputAutomationJFrame.optionsJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TInputAutomationJFrame.formWindowLostFocus(evt: TWindowEvent);
begin
        Self.logUtil.putF('Nothing', TJava.Box(Self), 'focusLost');
end;
    

procedure TInputAutomationJFrame.formWindowGainedFocus(evt: TWindowEvent);
begin
        if Self.stopOnFocusJCheckBoxMenuItem.isSelected() then begin
            Self.logUtil.putF('Stopping', TJava.Box(Self), 'focusGained');
            if (Self.runnableInterface) <> (nil) then begin
                Self.runnableInterface.setRunning(False);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.formFocusLost(evt: TFocusEvent);
begin
end;
    

procedure TInputAutomationJFrame.formFocusGained(evt: TFocusEvent);
begin
end;
    

procedure TInputAutomationJFrame.inputAutomationModuleJListValueChanged(evt: TListSelectionEvent);
var
  gameAutomationRobotModuleNameString: string;
  layout: TGroupLayout;
begin
        try
            gameAutomationRobotModuleNameString := TJava.UnboxString(TJava.ToObject(Self.inputAutomationModuleJList.getSelectedValue()));
            if (gameAutomationRobotModuleNameString) <> ('') then begin
                Self.inputAutomationModuleInterface := Self.inputAutomationModuleFactory.getInstance(gameAutomationRobotModuleNameString);
                Self.getAutomationModuleConfigurationJPanel().removeAll();
                layout := TGroupLayout(TJava.ToObject(Self.getAutomationModuleConfigurationJPanel().getLayout()));
                layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(Self.inputAutomationModuleInterface.getConfigurationJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
                layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(Self.inputAutomationModuleInterface.getConfigurationJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
                Self.gameRobotJTabbedPane.setEnabledAt(1, True);
                Self.logUtil.putF('Setting Module: ' + gameAutomationRobotModuleNameString + ' and Configuration JPanel', TJava.Box(Self), 'gameAutomationRobotModuleJListValueChanged');
            end else begin
                Self.logUtil.putF('Module name was null', TJava.Box(Self), 'gameAutomationRobotModuleJListValueChanged');
                Self.gameRobotJTabbedPane.setEnabledAt(1, False);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'gameAutomationRobotModuleJListValueChanged', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.stopJMenuItemActionPerformed(evt: TActionEvent);
begin
        if (Self.runnableInterface) <> (nil) then begin
            Self.runnableInterface.setRunning(False);
        end else begin
            Self.noModuleSelectedJDialog.setVisible(True);
            Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
        end;
end;
    

procedure TInputAutomationJFrame.startJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'startJMenuItemActionPerformed');
            if (Self.inputAutomationModuleInterface) <> (nil) then begin
                Self.runnableInterface := Self.inputAutomationModuleInterface.getInstance();
                if (Self.runnableInterface) <> (nil) then begin
                    Self.thread := TThread.Create(True);
                    TJava.Nothing;
                    Self.thread.start();
                end else begin
                    Self.logUtil.putF('Runnnable was null', TJava.Box(Self), 'startJMenuItemActionPerformed');
                    Self.noModuleSelectedJDialog.setVisible(True);
                    Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
                end;
            end else begin
                Self.logUtil.putF('InputAutomationModuleInterface was null', TJava.Box(Self), 'startJMenuItemActionPerformed');
                Self.noModuleSelectedJDialog.setVisible(True);
                Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'startJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

class function TInputAutomationJFrame.getInstance: TInputAutomationJFrame;
begin
        Exit(TInputAutomationJFrame.INPUTAUTOMATION_JFRAME);
end;
    

class procedure TInputAutomationJFrame.destroy;
begin
        TInputAutomationJFrame.INPUTAUTOMATION_JFRAME.setVisible(False);
end;
    

class procedure TInputAutomationJFrame.create_(inputAutomationBundleActivatorListenerInterface_: IInputAutomationBundleActivatorListenerInterface);
var
  appUrlGlobals_: TAppUrlGlobals;
begin
        TLogConfigTypeFactory.getInstance();
        appUrlGlobals_ := TAppUrlGlobals.Create();
        appUrlGlobals_.setWebappPath('G:/mnt/bc/mydev/work_automation/automation/run/');
        TURLGLOBALS.init(appUrlGlobals_);
        TWebappClassLoaderInfo.setLoader(TClassLoader.getSystemClassLoader());
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
                logUtil_ := TLogUtil.getInstance();
                commonStrings_ := TCommonStrings.getInstance();
                try
                    logUtil_.putF('Running', TJava.Box(Self), commonStrings_.RUN);
                    TInputAutomationJFrame.INPUTAUTOMATION_JFRAME := TInputAutomationJFrame.Create();
                    TInputRobotFactory.getInstance().addListener(TInputAutomationJFrame.getInstance());
                    if (inputAutomationBundleActivatorListenerInterface_) <> (nil) then begin
                        inputAutomationBundleActivatorListenerInterface_.registerAsService();
                        inputAutomationBundleActivatorListenerInterface_.useServices();
                    end;
                    TInputAutomationJFrame.INPUTAUTOMATION_JFRAME.setVisible(True);
                except
                    on e: SysUtils.Exception do begin
                    logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                    end;
                end;
end;
*));
end;
    

// throws Exception
class procedure TInputAutomationJFrame.main(args: TArray<string>);
begin
        TInputAutomationJFrame.create_(nil);
end;
    

function TInputAutomationJFrame.getAutomationModuleConfigurationJPanel: TJPanel;
begin
        Exit(Self.automationModuleConfigurationJPanel);
end;
    

procedure TInputAutomationJFrame.setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel: TJPanel);
begin
        Self.automationModuleConfigurationJPanel := automationModuleConfigurationJPanel;
end;
    

procedure TInputAutomationJFrame.onAdd(inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onAdd');
            TInputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent_.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onAdd', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onRemove(inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onRemove');
            TInputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent_.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onRemove', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onAdd(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onAdd');
            Self.inputAutomationModuleConfigurations.add(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration());
            Self.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onAdd', TJava.Box(e));
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onRemove(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent);
var
  inputAutomationConfiguration_: TInputAutomationConfiguration;
  inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  inputAutomationModuleConfigurations_: TInputAutomationModuleConfigurations;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onRemove');
            inputAutomationConfiguration_ := TInputAutomationConfigurationFactory.getInstance().inputAutomationConfiguration;
            inputAutomationModuleConfigurationList := inputAutomationConfiguration_.getInputAutomationModuleConfigurationList();
            if (inputAutomationModuleConfigurationList) = (nil) then begin
                logUtil_ := TLogUtil.getInstance();
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.putF('inputAutomationModuleConfigurationList: ' + TJava.ToString(inputAutomationModuleConfigurationList), TJava.Box(Self), commonStrings_.INIT);
                raise SysUtils.Exception.Create('');
            end;
            inputAutomationModuleConfigurations_ := TInputAutomationModuleConfigurations.Create(inputAutomationConfiguration_.getInputAutomationModuleConfigurationList());
            inputAutomationModuleConfigurations_.remove(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration());
            Self.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onRemove', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

