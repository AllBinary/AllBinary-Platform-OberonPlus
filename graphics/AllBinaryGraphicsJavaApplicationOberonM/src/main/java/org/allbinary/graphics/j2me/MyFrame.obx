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
// package org.allbinary.graphics.j2me
unit MyFrame;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, XslHelper, RotateJDialog, WorkAreaJPanelInterface, FileJDialog, FileJDialogListenerInterface, HashMapJDialogListenerInterface, GuiLog, LogUtil, CommonStrings, MouseEvent, ActionEvent, ChangeEvent, WindowEvent, KeyEvent, JButton, JMenuItem, JMenu, JPanel, JTabbedPane, JToolBar, JMenuBar, JLabel, JFrame, KeyListener, EventListener, SWTEventListener;

type
  {AB:TYPES}
  TMyFrame = class(TJFrame, IFileJDialogListenerInterface, IHashMapJDialogListenerInterface, IKeyListener, IEventListener, ISWTEventListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    guiLog: TGuiLog;
    xslHelper: TXslHelper;
    JAVA_TEMPLATE: string;
    SAVEEXTENSION: string;
    JAVAEXTENSION: string;
    fileJDialog: TFileJDialog;
    rotateJDialog: TRotateJDialog;
    animateJButton: TJButton;
    autoDamageJMenuItem: TJMenuItem;
    autoExplodeJMenuItem: TJMenuItem;
    autoGrowJMenuItem: TJMenuItem;
    autoRotateGenerationJMenuItem: TJMenuItem;
    autoSheildMenuItem: TJMenuItem;
    autoShrinkJMenuItem: TJMenuItem;
    centerJMenuItem: TJMenuItem;
    copyJMenuItem1: TJMenuItem;
    exitJMenuItem: TJMenuItem;
    explodeAllJMenuItem: TJMenuItem;
    exportJMenuItem1: TJMenuItem;
    fileJMenu: TJMenu;
    frameJMenu: TJMenu;
    generateJMenu: TJMenu;
    insertAfterJMenuItem: TJMenuItem;
    insertBeforeJMenuItem: TJMenuItem;
    jButton1: TJButton;
    jButton2: TJButton;
    jButton3: TJButton;
    jButton4: TJButton;
    jButton41: TJButton;
    jButton5: TJButton;
    jMenu1: TJMenu;
    jMenuItem1: TJMenuItem;
    jPanel1: TJPanel;
    jTabbedPane: TJTabbedPane;
    jToolBar1: TJToolBar;
    mainJPanel: TJPanel;
    menuJMenuBar: TJMenuBar;
    newJMenuItem: TJMenuItem;
    nextFrameJMenuItem: TJMenuItem;
    objectJMenu: TJMenu;
    openJButton: TJButton;
    openJMenuItem: TJMenuItem;
    playJButton: TJButton;
    previousFrameJMenuItem: TJMenuItem;
    removeJMenuItem: TJMenuItem;
    saveAsJMenuItem: TJMenuItem;
    saveJButton: TJButton;
    saveJMenuItem: TJMenuItem;
    statusJPanel: TJPanel;
    stopJjButton: TJButton;
    viewJMenu: TJMenu;
    zoomInJMenuItem: TJMenuItem;
    zoomOutJMenuItem: TJMenuItem;
    class var MAXWORKAREAS: Integer;
    class var numberOfWorkAreas: Integer;
    class var PATH: string;
    class var SAVE_PATH: string;
    class var TEMPLATE_EXPORT_PATH: string;
    class var statusJLabel: TJLabel;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure initComponents;
        procedure explodeAllJMenuItemMousePressed(evt: TMouseEvent);
        procedure autoExplodeJMenuItemMousePressed(evt: TMouseEvent);
        procedure stopJjButtonMousePressed(evt: TMouseEvent);
        procedure playJButtonMousePressed(evt: TMouseEvent);
        procedure autoRotateGenerationJMenuItemMousePressed(evt: TMouseEvent);
        procedure zoomOutJMenuItemMousePressed(evt: TMouseEvent);
        procedure zoomInJMenuItemMousePressed(evt: TMouseEvent);
        procedure openJMenuItemActionPerformed(evt: TActionEvent);
        procedure exportJMenuItem1ActionPerformed(evt: TActionEvent);
        procedure saveJMenuItemMousePressed(evt: TMouseEvent);
        procedure jTabbedPaneStateChanged(evt: TChangeEvent);
        procedure frameJMenuActionPerformed(evt: TActionEvent);
        procedure exitJMenuItemActionPerformed(evt: TActionEvent);
        procedure newJMenuItemActionPerformed(evt: TActionEvent);
        procedure fileJMenuActionPerformed(evt: TActionEvent);
        procedure exitForm(evt: TWindowEvent);
        procedure openJButtonActionPerformed(evt: TActionEvent);
        procedure jButton2ActionPerformed(evt: TActionEvent);
        procedure centerJMenuItemActionPerformed(evt: TActionEvent);
        procedure saveJButtonActionPerformed(evt: TActionEvent);
        procedure jButton1ActionPerformed(evt: TActionEvent);
        procedure jMenuItem1ActionPerformed(evt: TActionEvent);
        procedure onFiles(files: TArray<TFile>); virtual;
        procedure newGraphics;
        procedure openGraphics;
        procedure export;
        procedure save;
        procedure onHashMap(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function getSelectedWorkArea: IWorkAreaJPanelInterface;
        procedure updateSelectedWorkArea; virtual;
        procedure add(newCanvasInterface: IWorkAreaJPanelInterface); virtual;
        procedure keyPressed(keyEvent_: TKeyEvent); virtual;
        procedure keyReleased(keyEvent_: TKeyEvent); virtual;
        procedure keyTyped(keyEvent_: TKeyEvent); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  Dimension, WindowAdapter, ActionListener, MouseAdapter, GridLayout, ChangeListener, DomHelper, NewWorkAreaJDialog, WorkAreaDom, WorkAreaJPanel, MyCanvasEvent, MyCanvasEventService, MyCanvasEventSource, LOGGING, SmallIntegerSingletonFactory, AngleFactory, CommonLabels, Document;


{AB:CODE}

procedure TMyFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.guiLog := TGuiLog.getInstance();
  Self.xslHelper := TXslHelper.getInstance();
  Self.JAVA_TEMPLATE := 'svgExport.xsl';
  Self.SAVEEXTENSION := '.gxml';
  Self.JAVAEXTENSION := '.javax';
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TMyFrame.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMyFrame.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setSize(TDimension.Create(550, 400));
        Self.mainJPanel.setSize(TDimension.Create(550, 400));
        Self.jTabbedPane.setSize(TDimension.Create(550, 400));
        Self.fileJDialog := TFileJDialog.Create();
        Self.fileJDialog.addFinishedListener(Self);
        Self.rotateJDialog := TRotateJDialog.Create(Self, False);
end;
    

procedure TMyFrame.initComponents;
begin
        Self.jToolBar1 := TJToolBar.Create();
        Self.jButton2 := TJButton.Create();
        Self.saveJButton := TJButton.Create();
        Self.jButton1 := TJButton.Create();
        Self.openJButton := TJButton.Create();
        Self.jButton3 := TJButton.Create();
        Self.jButton4 := TJButton.Create();
        Self.jButton41 := TJButton.Create();
        Self.jButton5 := TJButton.Create();
        Self.animateJButton := TJButton.Create();
        Self.playJButton := TJButton.Create();
        Self.stopJjButton := TJButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.mainJPanel := TJPanel.Create();
        Self.jTabbedPane := TJTabbedPane.Create();
        Self.statusJPanel := TJPanel.Create();
        TMyFrame.statusJLabel := TJLabel.Create();
        Self.menuJMenuBar := TJMenuBar.Create();
        Self.fileJMenu := TJMenu.Create();
        Self.newJMenuItem := TJMenuItem.Create();
        Self.openJMenuItem := TJMenuItem.Create();
        Self.saveJMenuItem := TJMenuItem.Create();
        Self.saveAsJMenuItem := TJMenuItem.Create();
        Self.exportJMenuItem1 := TJMenuItem.Create();
        Self.exitJMenuItem := TJMenuItem.Create();
        Self.viewJMenu := TJMenu.Create();
        Self.zoomInJMenuItem := TJMenuItem.Create();
        Self.zoomOutJMenuItem := TJMenuItem.Create();
        Self.objectJMenu := TJMenu.Create();
        Self.explodeAllJMenuItem := TJMenuItem.Create();
        Self.frameJMenu := TJMenu.Create();
        Self.previousFrameJMenuItem := TJMenuItem.Create();
        Self.nextFrameJMenuItem := TJMenuItem.Create();
        Self.removeJMenuItem := TJMenuItem.Create();
        Self.copyJMenuItem1 := TJMenuItem.Create();
        Self.insertAfterJMenuItem := TJMenuItem.Create();
        Self.insertBeforeJMenuItem := TJMenuItem.Create();
        Self.generateJMenu := TJMenu.Create();
        Self.centerJMenuItem := TJMenuItem.Create();
        Self.autoDamageJMenuItem := TJMenuItem.Create();
        Self.autoExplodeJMenuItem := TJMenuItem.Create();
        Self.autoGrowJMenuItem := TJMenuItem.Create();
        Self.jMenuItem1 := TJMenuItem.Create();
        Self.autoRotateGenerationJMenuItem := TJMenuItem.Create();
        Self.autoSheildMenuItem := TJMenuItem.Create();
        Self.autoShrinkJMenuItem := TJMenuItem.Create();
        Self.jMenu1 := TJMenu.Create();
        Self.addWindowListener(TWindowAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.windowClosing(evt: TWindowEvent);
begin
                Self.exitForm(evt);
end;
*));
        Self.jButton2.setText('New');
        Self.jButton2.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton2ActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.jButton2);
        Self.saveJButton.setText('Save');
        Self.saveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.saveJButtonActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.saveJButton);
        Self.jButton1.setText('Export');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.jButton1);
        Self.openJButton.setText('Open');
        Self.openJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openJButtonActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.openJButton);
        Self.jButton3.setText('Copy');
        Self.jToolBar1.add(Self.jButton3);
        Self.jButton4.setText('Insert Before');
        Self.jToolBar1.add(Self.jButton4);
        Self.jButton41.setText('Insert After');
        Self.jToolBar1.add(Self.jButton41);
        Self.jButton5.setText('Delete');
        Self.jToolBar1.add(Self.jButton5);
        Self.animateJButton.setText('AnimateEdit');
        Self.jToolBar1.add(Self.animateJButton);
        Self.playJButton.setText('Play');
        Self.playJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.playJButtonMousePressed(evt);
end;
*));
        Self.jToolBar1.add(Self.playJButton);
        Self.stopJjButton.setText('Stop');
        Self.stopJjButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.stopJjButtonMousePressed(evt);
end;
*));
        Self.jToolBar1.add(Self.stopJjButton);
        Self.getContentPane().add(Self.jToolBar1, Tjava.awt.BorderLayout.NORTH);
        Self.jPanel1.setLayout(TGridLayout.Create(1, 0));
        Self.mainJPanel.setLayout(TGridLayout.Create(1, 0));
        Self.jTabbedPane.setMinimumSize(TDimension.Create(550, 400));
        Self.jTabbedPane.addChangeListener(TChangeListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.stateChanged(evt: TChangeEvent);
begin
                Self.jTabbedPaneStateChanged(evt);
end;
*));
        Self.mainJPanel.add(Self.jTabbedPane);
        Self.jPanel1.add(Self.mainJPanel);
        Self.getContentPane().add(Self.jPanel1, Tjava.awt.BorderLayout.CENTER);
        Self.statusJPanel.setLayout(TGridLayout.Create(1, 0));
        TMyFrame.statusJLabel.setText('Status Bar');
        Self.statusJPanel.add(TMyFrame.statusJLabel);
        Self.getContentPane().add(Self.statusJPanel, Tjava.awt.BorderLayout.SOUTH);
        Self.fileJMenu.setText('File');
        Self.fileJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fileJMenuActionPerformed(evt);
end;
*));
        Self.newJMenuItem.setText('New');
        Self.newJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.newJMenuItem);
        Self.openJMenuItem.setText('Open');
        Self.openJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.openJMenuItem);
        Self.saveJMenuItem.setText('Save');
        Self.saveJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.saveJMenuItemMousePressed(evt);
end;
*));
        Self.fileJMenu.add(Self.saveJMenuItem);
        Self.saveAsJMenuItem.setText('SaveAs');
        Self.fileJMenu.add(Self.saveAsJMenuItem);
        Self.exportJMenuItem1.setText('Export');
        Self.exportJMenuItem1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.exportJMenuItem1ActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.exportJMenuItem1);
        Self.exitJMenuItem.setText('Exit');
        Self.exitJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.exitJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.exitJMenuItem);
        Self.menuJMenuBar.add(Self.fileJMenu);
        Self.viewJMenu.setText('View');
        Self.zoomInJMenuItem.setText('Zoom In');
        Self.zoomInJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.zoomInJMenuItemMousePressed(evt);
end;
*));
        Self.viewJMenu.add(Self.zoomInJMenuItem);
        Self.zoomOutJMenuItem.setText('Zoom Out');
        Self.zoomOutJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.zoomOutJMenuItemMousePressed(evt);
end;
*));
        Self.viewJMenu.add(Self.zoomOutJMenuItem);
        Self.menuJMenuBar.add(Self.viewJMenu);
        Self.objectJMenu.setText('Objects');
        Self.explodeAllJMenuItem.setText('Explode All');
        Self.explodeAllJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.explodeAllJMenuItemMousePressed(evt);
end;
*));
        Self.objectJMenu.add(Self.explodeAllJMenuItem);
        Self.menuJMenuBar.add(Self.objectJMenu);
        Self.frameJMenu.setText('Frame');
        Self.frameJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.frameJMenuActionPerformed(evt);
end;
*));
        Self.previousFrameJMenuItem.setText('Previous');
        Self.frameJMenu.add(Self.previousFrameJMenuItem);
        Self.nextFrameJMenuItem.setText(TCommonLabels.getInstance().NEXT);
        Self.frameJMenu.add(Self.nextFrameJMenuItem);
        Self.removeJMenuItem.setText('Remove');
        Self.frameJMenu.add(Self.removeJMenuItem);
        Self.copyJMenuItem1.setText('Copy');
        Self.frameJMenu.add(Self.copyJMenuItem1);
        Self.insertAfterJMenuItem.setText('Ins After');
        Self.frameJMenu.add(Self.insertAfterJMenuItem);
        Self.insertBeforeJMenuItem.setText('Ins Before');
        Self.frameJMenu.add(Self.insertBeforeJMenuItem);
        Self.menuJMenuBar.add(Self.frameJMenu);
        Self.generateJMenu.setText('Generate');
        Self.centerJMenuItem.setText('Center');
        Self.centerJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.centerJMenuItemActionPerformed(evt);
end;
*));
        Self.generateJMenu.add(Self.centerJMenuItem);
        Self.autoDamageJMenuItem.setText('Damage');
        Self.generateJMenu.add(Self.autoDamageJMenuItem);
        Self.autoExplodeJMenuItem.setText('Explode');
        Self.autoExplodeJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.autoExplodeJMenuItemMousePressed(evt);
end;
*));
        Self.generateJMenu.add(Self.autoExplodeJMenuItem);
        Self.autoGrowJMenuItem.setText('Grow');
        Self.generateJMenu.add(Self.autoGrowJMenuItem);
        Self.jMenuItem1.setText('Mirror');
        Self.jMenuItem1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jMenuItem1ActionPerformed(evt);
end;
*));
        Self.generateJMenu.add(Self.jMenuItem1);
        Self.autoRotateGenerationJMenuItem.setText('Rotate');
        Self.autoRotateGenerationJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.autoRotateGenerationJMenuItemMousePressed(evt);
end;
*));
        Self.generateJMenu.add(Self.autoRotateGenerationJMenuItem);
        Self.autoSheildMenuItem.setText('Shield');
        Self.generateJMenu.add(Self.autoSheildMenuItem);
        Self.autoShrinkJMenuItem.setText('Shrink');
        Self.generateJMenu.add(Self.autoShrinkJMenuItem);
        Self.menuJMenuBar.add(Self.generateJMenu);
        Self.jMenu1.setText('Help');
        Self.menuJMenuBar.add(Self.jMenu1);
        Self.setJMenuBar(Self.menuJMenuBar);
        Self.pack();
end;
    

procedure TMyFrame.explodeAllJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.EXPLODE, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'explodeAllJMenuItemMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TMyFrame.autoExplodeJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.AUTOEXPLODE, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'autoExplodeJMenuItemMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TMyFrame.stopJjButtonMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().stop();
end;
    

procedure TMyFrame.playJButtonMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().play();
end;
    

procedure TMyFrame.autoRotateGenerationJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.rotateJDialog.setVisible(True);
end;
    

procedure TMyFrame.zoomOutJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().changeZoom(-1);
end;
    

procedure TMyFrame.zoomInJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().changeZoom(1);
end;
    

procedure TMyFrame.openJMenuItemActionPerformed(evt: TActionEvent);
begin
        Self.openGraphics();
end;
    

procedure TMyFrame.exportJMenuItem1ActionPerformed(evt: TActionEvent);
begin
        Self.export();
end;
    

procedure TMyFrame.saveJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.save();
end;
    

procedure TMyFrame.jTabbedPaneStateChanged(evt: TChangeEvent);
begin
        Self.updateSelectedWorkArea();
end;
    

procedure TMyFrame.frameJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMyFrame.exitJMenuItemActionPerformed(evt: TActionEvent);
begin
        Halt(0);
end;
    

procedure TMyFrame.newJMenuItemActionPerformed(evt: TActionEvent);
begin
        Self.newGraphics();
end;
    

procedure TMyFrame.fileJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMyFrame.exitForm(evt: TWindowEvent);
begin
        Halt(0);
end;
    

procedure TMyFrame.openJButtonActionPerformed(evt: TActionEvent);
begin
        Self.openGraphics();
end;
    

procedure TMyFrame.jButton2ActionPerformed(evt: TActionEvent);
begin
        Self.newGraphics();
end;
    

procedure TMyFrame.centerJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.CENTER, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'centerJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TMyFrame.saveJButtonActionPerformed(evt: TActionEvent);
begin
        Self.save();
end;
    

procedure TMyFrame.jButton1ActionPerformed(evt: TActionEvent);
begin
        Self.export();
end;
    

procedure TMyFrame.jMenuItem1ActionPerformed(evt: TActionEvent);
begin
        try
            Self.getSelectedWorkArea().autoMirror();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'centerJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TMyFrame.onFiles(files: TArray<TFile>);
var
  document_: TDocument;
  workAreaJPanel_: TWorkAreaJPanel;
  index: Integer;
begin
        try
            Self.logUtil.putF('Reading: ' + TJava.ToString(files), TJava.Box(Self), 'onFiles');
            for index := 0 to System.Length(files) - 1 do begin
                document_ := TDomHelper.getInstance().createDocument(files[index]);
                workAreaJPanel_ := TWorkAreaJPanel.Create(TWorkAreaDom.Create(document_), Self.getSize());
                workAreaJPanel_.setLayout(TGridLayout.Create(1, 1));
                Self.add((TJava.ToObject(workAreaJPanel_) as IWorkAreaJPanelInterface));
            end;
            Self.fileJDialog.setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onFiles', TJava.Box(e));
            end;
        end;
end;
    

procedure TMyFrame.newGraphics;
var
  newName: string;
  dim: TDimension;
  newDialog: TNewWorkAreaJDialog;
begin
        try
            newName := 'graphic' + IntToStr(TMyFrame.numberOfWorkAreas);
            dim := Self.getSize();
            newDialog := TNewWorkAreaJDialog.Create(Self, False, dim, newName);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'newJMenuItemActionPerformed', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TMyFrame.openGraphics;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'openImageJMenuItemActionPerformed');
            Self.fileJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'open', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TMyFrame.export;
var
  workAreaJPanel_: IWorkAreaJPanelInterface;
  file_: TFile;
  document_: TDocument;
begin
        try
            workAreaJPanel_ := (TJava.ToObject(Self.jTabbedPane.getSelectedComponent()) as IWorkAreaJPanelInterface);
            file_ := TFile.Create(Self.SAVE_PATH + '/' + workAreaJPanel_.getName() + Self.JAVAEXTENSION);
            document_ := workAreaJPanel_.toDocument();
            Self.logUtil.putF('Export: ' + TDomHelper.getInstance().toString(document_), TJava.Box(Self), 'exportJMenuItem1ActionPerformed');
            Self.xslHelper.export(file_, TJava.ToString(TMyFrame.TEMPLATE_EXPORT_PATH) + '/' + Self.JAVA_TEMPLATE, document_);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'export', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TMyFrame.save;
var
  workAreaJPanel_: IWorkAreaJPanelInterface;
begin
        try
            workAreaJPanel_ := (TJava.ToObject(Self.jTabbedPane.getSelectedComponent()) as IWorkAreaJPanelInterface);
            TDomHelper.getInstance().save(TFile.Create(Self.SAVE_PATH + '/' + workAreaJPanel_.getName() + Self.SAVEEXTENSION), workAreaJPanel_.toDocument());
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.SAVE, TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TMyFrame.onHashMap(hashMap_: TJavaHashMap<TObject, TObject>);
var
  angleIncrementInteger: Integer;
  totalRotationInteger: Integer;
begin
        angleIncrementInteger := Integer(hashMap_.get(TJava.Box(IntToStr(0))));
        totalRotationInteger := Integer(hashMap_.get(TJava.Box(IntToStr(1))));
        Self.getSelectedWorkArea().autoRotate((angleIncrementInteger), (totalRotationInteger));
end;
    

function TMyFrame.getSelectedWorkArea: IWorkAreaJPanelInterface;
begin
        Exit((TJava.ToObject(Self.jTabbedPane.getSelectedComponent()) as IWorkAreaJPanelInterface));
end;
    

procedure TMyFrame.updateSelectedWorkArea;
var
  numberOfTabs: Integer;
  workAreaJPanel_: IWorkAreaJPanelInterface;
  index: Integer;
begin
        numberOfTabs := Self.jTabbedPane.getTabCount();
        for index := 0 to numberOfTabs - 1 do begin
            workAreaJPanel_ := (TJava.ToObject(Self.jTabbedPane.getComponentAt(index)) as IWorkAreaJPanelInterface);
            workAreaJPanel_.deselect();
        end;
        workAreaJPanel_ := (TJava.ToObject(Self.jTabbedPane.getSelectedComponent()) as IWorkAreaJPanelInterface);
        if (workAreaJPanel_) <> (nil) then begin
            workAreaJPanel_.select();
        end;
end;
    

// throws Exception
procedure TMyFrame.add(newCanvasInterface: IWorkAreaJPanelInterface);
var
  animationThread: TThread;
begin
        try
            Inc(Self.numberOfWorkAreas);
            if (Self.numberOfWorkAreas) = (TMyFrame.MAXWORKAREAS) then begin
                raise SysUtils.Exception.Create('');
            end;
            Self.jTabbedPane.addTab(newCanvasInterface.getName(), TJPanel(TJava.ToObject(newCanvasInterface)));
            Self.jTabbedPane.setSelectedComponent(TJPanel(TJava.ToObject(newCanvasInterface)));
            animationThread := TThread.Create(True);
            animationThread.start();
            Self.updateSelectedWorkArea();
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addNewCanvas', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TMyFrame.keyPressed(keyEvent_: TKeyEvent);
begin
        Self.getSelectedWorkArea().keyPressed(keyEvent_);
end;
    

procedure TMyFrame.keyReleased(keyEvent_: TKeyEvent);
begin
end;
    

procedure TMyFrame.keyTyped(keyEvent_: TKeyEvent);
begin
end;
    

class procedure TMyFrame.main(args: TArray<string>);
var
  logUtil_: TLogUtil;
begin
        try
            TAngleFactory.getInstance();
            TSmallIntegerSingletonFactory.getInstance().init();
            TMyFrame.Create().show();
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            logUtil_.put(TCommonStrings.getInstance().EXCEPTION, nil, 'main', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMyFrame.MAXWORKAREAS := 10;
  TMyFrame.numberOfWorkAreas := 0;
  TMyFrame.PATH := 'G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication';
  TMyFrame.SAVE_PATH := TJava.ToString(TMyFrame.PATH) + '/save';
  TMyFrame.TEMPLATE_EXPORT_PATH := TJava.ToString(TMyFrame.PATH) + '/templates/export';
  
  {AB:END}

end.

