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
// package org.allbinary.image.gui
unit ImageToolJFrame;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FileJDialog, FileJDialogListenerInterface, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ColorRangeInterface, CommonStrings, ActionEvent, JTextField, JDialog, JMenuItem, JLabel, JMenu, JPanel, JMenuBar, JButton, JFrame;

type
  {AB:TYPES}
  TImageToolJFrame = class(TJFrame, IFileJDialogListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    fileJDialog: TFileJDialog;
    imageProcessorInput: TImageProcessorInput;
    analysisActionJDialog: TJDialog;
    analyzeJMenuItem: TJMenuItem;
    blueJLabel: TJLabel;
    colorRangeJLabel: TJLabel;
    createStripImageJMenuItem: TJMenuItem;
    fileJMenu: TJMenu;
    generateSpriteSplitterMenuItem: TJMenuItem;
    generateRotationMenuItem: TJMenuItem;
    generateMirrorSpriteMenuItem: TJMenuItem;
    generateRotationSpriteJMenuItem: TJMenuItem;
    greenJLabel: TJLabel;
    jPanel1: TJPanel;
    mainJMenuBar: TJMenuBar;
    maxBlueJTextField: TJTextField;
    maxGreenJTextField: TJTextField;
    maxJLabel: TJLabel;
    maxRedJTextField: TJTextField;
    minBlueJTextField: TJTextField;
    minGreenJTextField: TJTextField;
    minJLabel: TJLabel;
    minRedJTextField: TJTextField;
    mirrorJMenuItem: TJMenuItem;
    okJButton: TJButton;
    openImageJMenuItem: TJMenuItem;
    processingJMenu: TJMenu;
    redJLabel: TJLabel;
    scaleImagesJMenuItem: TJMenuItem;
    canvasImagesJMenuItem: TJMenuItem;
    createIconImagesJMenuItem: TJMenuItem;
    titleJLabel: TJLabel;
    class var imageProcessorInputCompositeInterface: IImageProcessorInputCompositeInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure initComponents;
        procedure createStripImageJMenuItemActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure processingJMenuActionPerformed(evt: TActionEvent);
        procedure openImageJMenuItemActionPerformed(evt: TActionEvent);
        procedure onFiles(files: TArray<TFile>); virtual;
        procedure fileJMenuActionPerformed(evt: TActionEvent);
        procedure analyzeJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateRotationSpriteJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateSpriteSplitterMenuItemActionPerformed(evt: TActionEvent);
        procedure generateRotationMenuItemActionPerformed(evt: TActionEvent);
        procedure scaleImagesJMenuItemActionPerformed(evt: TActionEvent);
        procedure createIconsJMenuItemActionPerformed(evt: TActionEvent);
        procedure canvasImagesJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateMirrorSpriteMenuItemActionPerformed(evt: TActionEvent);
        procedure mirrorJMenuItemActionPerformed(evt: TActionEvent);
        function getColorRangeInterface: IColorRangeInterface;
        function getMaxBlueJTextField: TJTextField; virtual;
        procedure setMaxBlueJTextField(maxBlueJTextField: TJTextField); virtual;
        function getMaxGreenJTextField: TJTextField; virtual;
        procedure setMaxGreenJTextField(maxGreenJTextField: TJTextField); virtual;
        function getMaxRedJTextField: TJTextField; virtual;
        procedure setMaxRedJTextField(maxRedJTextField: TJTextField); virtual;
        function getMinBlueJTextField: TJTextField; virtual;
        procedure setMinBlueJTextField(minBlueJTextField: TJTextField); virtual;
        function getMinGreenJTextField: TJTextField; virtual;
        procedure setMinGreenJTextField(minGreenJTextField: TJTextField); virtual;
        function getMinRedJTextField: TJTextField; virtual;
        procedure setMinRedJTextField(minRedJTextField: TJTextField); virtual;
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, GridLayout, ImageUnifierJPanel, ImageAnalysisResultsJPanel, RotationSpriteImageJPanel, SpriteSplitterImageJPanel, RotationImageJPanel, ResizeImageJPanel, CreateIconImagesJPanel, CanvasImageJPanel, MirrorSpriteImageJPanel, MirrorImageJPanel, ColorRange, ImageAnalysis, ImageAnalysisResults, CommonPhoneStrings;


{AB:CODE}

procedure TImageToolJFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TImageToolJFrame.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageToolJFrame.Create;
var
  commonPhoneStrings_: TCommonPhoneStrings;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        Self.setSize(640, 480);
        Self.getMaxRedJTextField().setText('255');
        Self.getMaxGreenJTextField().setText('255');
        Self.getMaxBlueJTextField().setText('255');
        Self.getMinRedJTextField().setText(commonPhoneStrings_.ZERO);
        Self.getMinGreenJTextField().setText(commonPhoneStrings_.ZERO);
        Self.getMinBlueJTextField().setText(commonPhoneStrings_.ZERO);
        Self.fileJDialog := TFileJDialog.Create();
        Self.fileJDialog.addFinishedListener(Self);
end;
    

procedure TImageToolJFrame.initComponents;
var
  analysisActionJDialogLayout: TGroupLayout;
begin
        Self.analysisActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.colorRangeJLabel := TJLabel.Create();
        Self.redJLabel := TJLabel.Create();
        Self.minJLabel := TJLabel.Create();
        Self.maxJLabel := TJLabel.Create();
        Self.greenJLabel := TJLabel.Create();
        Self.blueJLabel := TJLabel.Create();
        Self.minRedJTextField := TJTextField.Create();
        Self.maxRedJTextField := TJTextField.Create();
        Self.maxGreenJTextField := TJTextField.Create();
        Self.minBlueJTextField := TJTextField.Create();
        Self.maxBlueJTextField := TJTextField.Create();
        Self.okJButton := TJButton.Create();
        Self.minGreenJTextField := TJTextField.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.mainJMenuBar := TJMenuBar.Create();
        Self.fileJMenu := TJMenu.Create();
        Self.openImageJMenuItem := TJMenuItem.Create();
        Self.processingJMenu := TJMenu.Create();
        Self.analyzeJMenuItem := TJMenuItem.Create();
        Self.generateSpriteSplitterMenuItem := TJMenuItem.Create();
        Self.generateRotationMenuItem := TJMenuItem.Create();
        Self.generateMirrorSpriteMenuItem := TJMenuItem.Create();
        Self.generateRotationSpriteJMenuItem := TJMenuItem.Create();
        Self.createStripImageJMenuItem := TJMenuItem.Create();
        Self.mirrorJMenuItem := TJMenuItem.Create();
        Self.scaleImagesJMenuItem := TJMenuItem.Create();
        Self.canvasImagesJMenuItem := TJMenuItem.Create();
        Self.createIconImagesJMenuItem := TJMenuItem.Create();
        Self.analysisActionJDialog.setMinimumSize(TDimension.Create(350, 250));
        Self.titleJLabel.setText('              Color At Action Options            ');
        Self.colorRangeJLabel.setText('Color Range');
        Self.redJLabel.setText('Red:');
        Self.minJLabel.setText('Minimum');
        Self.maxJLabel.setText('Maximum');
        Self.greenJLabel.setText('Green:');
        Self.blueJLabel.setText('Blue:');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        analysisActionJDialogLayout := TGroupLayout.Create(Self.analysisActionJDialog.getContentPane());
        Self.analysisActionJDialog.getContentPane().setLayout(analysisActionJDialogLayout);
        analysisActionJDialogLayout.setHorizontalGroup(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().addContainerGap().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.blueJLabel).add(Self.greenJLabel).add(Self.redJLabel).add(Self.colorRangeJLabel)).add(29, 29, 29).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Torg.jdesktop.layout.GroupLayout.TRAILING, Self.minJLabel, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 58, TShort.MAX_VALUE).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING, False).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minBlueJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minGreenJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minRedJTextField, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 42, TShort.MAX_VALUE).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.okJButton))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Torg.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING, False).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.maxRedJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(1, 1, 1).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.maxBlueJTextField).add(Self.maxGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 43, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED, 17, TShort.MAX_VALUE)).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.maxJLabel, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 61, TShort.MAX_VALUE)).addContainerGap()).add(Torg.jdesktop.layout.GroupLayout.TRAILING, analysisActionJDialogLayout.createSequentialGroup().add(Self.titleJLabel).add(25, 25, 25)))));
        analysisActionJDialogLayout.setVerticalGroup(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(Self.titleJLabel).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minJLabel).add(Self.colorRangeJLabel).add(Self.maxJLabel)).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.redJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minRedJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxRedJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.greenJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.blueJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minBlueJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxBlueJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).add(16, 16, 16).add(Self.okJButton).addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.EXIT_ON_CLOSE);
        Self.getContentPane().setLayout(TGridLayout.Create(1, 0));
        Self.jPanel1.setLayout(TGridLayout.Create(1, 0));
        Self.getContentPane().add(Self.jPanel1);
        Self.fileJMenu.setText('File');
        Self.fileJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fileJMenuActionPerformed(evt);
end;
*));
        Self.openImageJMenuItem.setText('Open');
        Self.openImageJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openImageJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.openImageJMenuItem);
        Self.mainJMenuBar.add(Self.fileJMenu);
        Self.processingJMenu.setText('Processing');
        Self.processingJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.processingJMenuActionPerformed(evt);
end;
*));
        Self.analyzeJMenuItem.setText('Image Analyze');
        Self.analyzeJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.analyzeJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.analyzeJMenuItem);
        Self.generateMirrorSpriteMenuItem.setText('Mirror Sprite Generator');
        Self.generateMirrorSpriteMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateMirrorSpriteMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateMirrorSpriteMenuItem);
        Self.generateRotationSpriteJMenuItem.setText('Rotation Sprite Generator');
        Self.generateRotationSpriteJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateRotationSpriteJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateRotationSpriteJMenuItem);
        Self.generateSpriteSplitterMenuItem.setText('Sprite Splitter Generator');
        Self.generateSpriteSplitterMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateSpriteSplitterMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateSpriteSplitterMenuItem);
        Self.generateRotationMenuItem.setText('Rotate Image Generator');
        Self.generateRotationMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateRotationMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateRotationMenuItem);
        Self.createStripImageJMenuItem.setText('Multi Image Unifier');
        Self.createStripImageJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.createStripImageJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.createStripImageJMenuItem);
        Self.mirrorJMenuItem.setText('Mirror Image(s)');
        Self.mirrorJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.mirrorJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.mirrorJMenuItem);
        Self.scaleImagesJMenuItem.setText('Scale Image(s)');
        Self.scaleImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.scaleImagesJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.scaleImagesJMenuItem);
        Self.canvasImagesJMenuItem.setText('Canvas Image(s)');
        Self.canvasImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.canvasImagesJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.canvasImagesJMenuItem);
        Self.createIconImagesJMenuItem.setText('Create Icon Image(s)');
        Self.createIconImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.createIconsJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.createIconImagesJMenuItem);
        Self.mainJMenuBar.add(Self.processingJMenu);
        Self.setJMenuBar(Self.mainJMenuBar);
        Self.pack();
end;
    

procedure TImageToolJFrame.createStripImageJMenuItemActionPerformed(evt: TActionEvent);
var
  imageUnifierJPanel_: TImageUnifierJPanel;
begin
        try
            imageUnifierJPanel_ := TImageUnifierJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(imageUnifierJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := imageUnifierJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'createStripImageJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.okJButtonActionPerformed(evt: TActionEvent);
var
  imageAnalysisResultsArray: TArray<TImageAnalysisResults>;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'okJButtonActionPerformed');
            imageAnalysisResultsArray := TImageAnalysis.getInstance().process(Self.imageProcessorInput.getBufferedImageArray(), Self.getColorRangeInterface());
            Self.jPanel1.removeAll();
            Self.jPanel1.add(TImageAnalysisResultsJPanel.Create(imageAnalysisResultsArray));
            Self.jPanel1.updateUI();
            Self.analysisActionJDialog.setVisible(False);
            TImageToolJFrame.imageProcessorInputCompositeInterface := nil;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'okJButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.processingJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TImageToolJFrame.openImageJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'openImageJMenuItemActionPerformed');
            Self.fileJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'openImageJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.onFiles(files: TArray<TFile>);
var
  bufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
begin
        try
            Self.logUtil.putF('Reading ' + IntToStr(System.Length(files)) + ' files.', TJava.Box(Self), 'onFiles');
            TArrays.sort(files, TComparator<TFile>.Create() (* Java anonymous class body: implement it as a named class
                

            function T.compare(file1: TFile; file2: TFile): Integer;
var
  fileNameIndexValue1: Integer;
  fileNameIndexValue2: Integer;
begin
                    fileNameIndexValue1 := Self.extractIndexNumberIfAnyFromFileName(file1.getName());
                    fileNameIndexValue2 := Self.extractIndexNumberIfAnyFromFileName(file2.getName());
                    Exit((fileNameIndexValue1) - (fileNameIndexValue2));
end;
                

            function T.extractIndexNumberIfAnyFromFileName(name: string): Integer;
var
  i: Integer;
  start: Integer;
  end_: Integer;
  number: string;
begin
                    i := 0;
                    try
                        start := ((RPos(TJava.ToString('_'), name) - 1)) + (1);
                        end_ := (RPos(TJava.ToString('.'), name) - 1);
                        number := Copy(name, (start) + 1, (end_) - (start));
                        i := StrToInt(number);
                    except
                        on e: SysUtils.Exception do begin
                        i := 0;
                        end;
                    end;
                    Exit(i);
end;
*));
            bufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(files));
            for index := 0 to System.Length(files) - 1 do begin
                bufferedImageArray[index] := TImageIO.read(files[index]);
                if (bufferedImageArray[index]) = (nil) then begin
                    raise SysUtils.Exception.Create('Unable to read file: ' + TJava.ToString(files[index].getPath()));
                end;
            end;
            Self.imageProcessorInput := TImageProcessorInput.Create(files, bufferedImageArray);
            Self.fileJDialog.setVisible(False);
            if (TImageToolJFrame.imageProcessorInputCompositeInterface) <> (nil) then begin
                TImageToolJFrame.imageProcessorInputCompositeInterface.setImageProcessorInput(Self.imageProcessorInput);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onFiles', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.fileJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TImageToolJFrame.analyzeJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'analyzeJMenuItemActionPerformed');
            Self.analysisActionJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'analyzeJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.generateRotationSpriteJMenuItemActionPerformed(evt: TActionEvent);
var
  spriteImageJPanel: TRotationSpriteImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'generateRotationSpriteJMenuItemActionPerformed');
            spriteImageJPanel := TRotationSpriteImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(spriteImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := spriteImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateRotationSpriteJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.generateSpriteSplitterMenuItemActionPerformed(evt: TActionEvent);
var
  imageJPanel: TSpriteSplitterImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'generateRotationSpriteJMenuItemActionPerformed');
            imageJPanel := TSpriteSplitterImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(imageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := imageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateRotationMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.generateRotationMenuItemActionPerformed(evt: TActionEvent);
var
  rotationImageJPanel_: TRotationImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'generateRotationSpriteJMenuItemActionPerformed');
            rotationImageJPanel_ := TRotationImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(rotationImageJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := rotationImageJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateRotationMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.scaleImagesJMenuItemActionPerformed(evt: TActionEvent);
var
  resizeImageJPanel_: TResizeImageJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'scaleImagesJMenuItemActionPerformed');
            resizeImageJPanel_ := TResizeImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(resizeImageJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := resizeImageJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'scaleImagesJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.createIconsJMenuItemActionPerformed(evt: TActionEvent);
var
  createIconImagesJPanel_: TCreateIconImagesJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'createIconsJMenuItemActionPerformed');
            createIconImagesJPanel_ := TCreateIconImagesJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(createIconImagesJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := createIconImagesJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'scaleImagesJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.canvasImagesJMenuItemActionPerformed(evt: TActionEvent);
var
  resizeImageJPanel_: TCanvasImageJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'canvasImagesJMenuItemActionPerformed');
            resizeImageJPanel_ := TCanvasImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(resizeImageJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := resizeImageJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'scaleImagesJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.generateMirrorSpriteMenuItemActionPerformed(evt: TActionEvent);
var
  spriteImageJPanel: TMirrorSpriteImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'generateMirrorSpriteJMenuItemActionPerformed');
            spriteImageJPanel := TMirrorSpriteImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(spriteImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := spriteImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateMirrorSpriteJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageToolJFrame.mirrorJMenuItemActionPerformed(evt: TActionEvent);
var
  mirrorImageJPanel_: TMirrorImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', TJava.Box(Self), 'generateMirrorJMenuItemActionPerformed');
            mirrorImageJPanel_ := TMirrorImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(mirrorImageJPanel_);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := mirrorImageJPanel_;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateMirrorJMenuItemActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

function TImageToolJFrame.getColorRangeInterface: IColorRangeInterface;
var
  colorRangeInterface_: IColorRangeInterface;
begin
        colorRangeInterface_ := (TJava.ToObject(TColorRange.Create()) as IColorRangeInterface);
        colorRangeInterface_.setMinRed((Self.getMinRedJTextField().getText()));
        colorRangeInterface_.setMaxRed((Self.getMaxRedJTextField().getText()));
        colorRangeInterface_.setMinGreen((Self.getMinGreenJTextField().getText()));
        colorRangeInterface_.setMaxGreen((Self.getMaxGreenJTextField().getText()));
        colorRangeInterface_.setMinBlue((Self.getMinBlueJTextField().getText()));
        colorRangeInterface_.setMaxBlue((Self.getMaxBlueJTextField().getText()));
        Exit(colorRangeInterface_);
end;
    

function TImageToolJFrame.getMaxBlueJTextField: TJTextField;
begin
        Exit(Self.maxBlueJTextField);
end;
    

procedure TImageToolJFrame.setMaxBlueJTextField(maxBlueJTextField: TJTextField);
begin
        Self.maxBlueJTextField := Self.maxBlueJTextField;
end;
    

function TImageToolJFrame.getMaxGreenJTextField: TJTextField;
begin
        Exit(Self.maxGreenJTextField);
end;
    

procedure TImageToolJFrame.setMaxGreenJTextField(maxGreenJTextField: TJTextField);
begin
        Self.maxGreenJTextField := Self.maxGreenJTextField;
end;
    

function TImageToolJFrame.getMaxRedJTextField: TJTextField;
begin
        Exit(Self.maxRedJTextField);
end;
    

procedure TImageToolJFrame.setMaxRedJTextField(maxRedJTextField: TJTextField);
begin
        Self.maxRedJTextField := Self.maxRedJTextField;
end;
    

function TImageToolJFrame.getMinBlueJTextField: TJTextField;
begin
        Exit(Self.minBlueJTextField);
end;
    

procedure TImageToolJFrame.setMinBlueJTextField(minBlueJTextField: TJTextField);
begin
        Self.minBlueJTextField := Self.minBlueJTextField;
end;
    

function TImageToolJFrame.getMinGreenJTextField: TJTextField;
begin
        Exit(Self.minGreenJTextField);
end;
    

procedure TImageToolJFrame.setMinGreenJTextField(minGreenJTextField: TJTextField);
begin
        Self.minGreenJTextField := Self.minGreenJTextField;
end;
    

function TImageToolJFrame.getMinRedJTextField: TJTextField;
begin
        Exit(Self.minRedJTextField);
end;
    

procedure TImageToolJFrame.setMinRedJTextField(minRedJTextField: TJTextField);
begin
        Self.minRedJTextField := Self.minRedJTextField;
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

