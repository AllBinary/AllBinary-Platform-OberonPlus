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
unit ImageAnalysisResultsJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageAnalysisResults, JTextField, JComboBox, JLabel, JPanel;

type
  {AB:TYPES}
  TImageAnalysisResultsJPanel = class(TJPanel)
  public
    avgBlueJTextField: TJTextField;
    avgGreenJTextField: TJTextField;
    avgRedJTextField: TJTextField;
    jComboBox1: TJComboBox;
    jLabel1: TJLabel;
    jLabel10: TJLabel;
    jLabel11: TJLabel;
    jLabel12: TJLabel;
    jLabel13: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    jLabel7: TJLabel;
    jLabel8: TJLabel;
    jLabel9: TJLabel;
    matchingPixelsJTextField: TJTextField;
    maxBlueJTextField: TJTextField;
    maxGreenJTextField: TJTextField;
    maxRedJTextField: TJTextField;
    minBlueJTextField: TJTextField;
    minGreenJTextField: TJTextField;
    minRedJTextField: TJTextField;
    percentMatchingJTextField: TJTextField;
    totalPixelsJTextField: TJTextField;
    procedure InitFields;
        constructor Create(imageAnalysisResultsArray: TArray<TImageAnalysisResults>);
        procedure initComponents;
        procedure updateImageColorRangeResults(imageAnalysisResults_: TImageAnalysisResults);
  end;

implementation
uses
  DefaultComboBoxModel, GroupLayout, ImageColorRangeResults, ImageColorResults, CommonPhoneStrings;


{AB:CODE}

procedure TImageAnalysisResultsJPanel.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TImageAnalysisResultsJPanel.Create(imageAnalysisResultsArray: TArray<TImageAnalysisResults>);
var
  imageAnalysisResults_: TImageAnalysisResults;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        imageAnalysisResults_ := imageAnalysisResultsArray[0];
        Self.updateImageColorRangeResults(imageAnalysisResults_);
end;
    

procedure TImageAnalysisResultsJPanel.initComponents;
var
  layout: TGroupLayout;
begin
        Self.jLabel1 := TJLabel.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.percentMatchingJTextField := TJTextField.Create();
        Self.totalPixelsJTextField := TJTextField.Create();
        Self.matchingPixelsJTextField := TJTextField.Create();
        Self.jComboBox1 := TJComboBox.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.jLabel7 := TJLabel.Create();
        Self.avgRedJTextField := TJTextField.Create();
        Self.avgGreenJTextField := TJTextField.Create();
        Self.avgBlueJTextField := TJTextField.Create();
        Self.minGreenJTextField := TJTextField.Create();
        Self.jLabel8 := TJLabel.Create();
        Self.jLabel9 := TJLabel.Create();
        Self.jLabel10 := TJLabel.Create();
        Self.minRedJTextField := TJTextField.Create();
        Self.minBlueJTextField := TJTextField.Create();
        Self.jLabel11 := TJLabel.Create();
        Self.jLabel12 := TJLabel.Create();
        Self.jLabel13 := TJLabel.Create();
        Self.maxRedJTextField := TJTextField.Create();
        Self.maxGreenJTextField := TJTextField.Create();
        Self.maxBlueJTextField := TJTextField.Create();
        Self.jLabel1.setText('Matching Pixels:');
        Self.jLabel2.setText('Total Pixels:');
        Self.jLabel3.setText('Percent Matching:');
        Self.percentMatchingJTextField.setEditable(False);
        Self.totalPixelsJTextField.setEditable(False);
        Self.matchingPixelsJTextField.setEditable(False);
        Self.jComboBox1.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create(TCommonPhoneStrings.getInstance().ONE)));
        Self.jComboBox1.setEnabled(False);
        Self.jLabel4.setText('Image:');
        Self.jLabel5.setText('Average Red:');
        Self.jLabel6.setText('Average Green:');
        Self.jLabel7.setText('Average Blue:');
        Self.avgRedJTextField.setEditable(False);
        Self.avgGreenJTextField.setEditable(False);
        Self.avgBlueJTextField.setEditable(False);
        Self.minGreenJTextField.setEditable(False);
        Self.jLabel8.setText('Min Red:');
        Self.jLabel9.setText('Min Green:');
        Self.jLabel10.setText('Min Blue:');
        Self.minRedJTextField.setEditable(False);
        Self.minBlueJTextField.setEditable(False);
        Self.jLabel11.setText('Max Red:');
        Self.jLabel12.setText('Max Green:');
        Self.jLabel13.setText('Max Blue:');
        Self.maxRedJTextField.setEditable(False);
        Self.maxGreenJTextField.setEditable(False);
        Self.maxBlueJTextField.setEditable(False);
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel3).addComponent(Self.jLabel2).addComponent(Self.jLabel1).addComponent(Self.jLabel5).addComponent(Self.jLabel6).addComponent(Self.jLabel7).addComponent(Self.jLabel4)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jComboBox1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 81, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.avgBlueJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE).addComponent(Self.avgGreenJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE).addComponent(Self.avgRedJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE).addComponent(Self.totalPixelsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE).addComponent(Self.percentMatchingJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE).addComponent(Self.matchingPixelsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 81, TShort.MAX_VALUE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel12).addComponent(Self.jLabel13).addComponent(Self.jLabel8).addComponent(Self.jLabel9).addComponent(Self.jLabel10).addComponent(Self.jLabel11)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 82, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap(18, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel4).addComponent(Self.jComboBox1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.matchingPixelsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel8).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel2).addComponent(Self.totalPixelsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel9).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel3).addComponent(Self.percentMatchingJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel10).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel5).addComponent(Self.avgRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel11).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel6).addComponent(Self.avgGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel12)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel7).addComponent(Self.avgBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel13).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE))));
end;
    

procedure TImageAnalysisResultsJPanel.updateImageColorRangeResults(imageAnalysisResults_: TImageAnalysisResults);
var
  imageColorRangeResults_: TImageColorRangeResults;
  imageColorResults_: TImageColorResults;
begin
        imageColorRangeResults_ := imageAnalysisResults_.getImageColorRangeResults();
        Self.matchingPixelsJTextField.setText(imageColorRangeResults_.getMatchingPixelsChecked().toString());
        Self.totalPixelsJTextField.setText(imageColorRangeResults_.getTotalPixelsChecked().toString());
        Self.percentMatchingJTextField.setText(imageColorRangeResults_.getPercent().toString());
        imageColorResults_ := imageAnalysisResults_.getImageColorResults();
        Self.avgRedJTextField.setText(imageColorResults_.getColorAverage().getAvgRed().toString());
        Self.avgGreenJTextField.setText(imageColorResults_.getColorAverage().getAvgGreen().toString());
        Self.avgBlueJTextField.setText(imageColorResults_.getColorAverage().getAvgBlue().toString());
        Self.minRedJTextField.setText(imageColorResults_.getColorRange().getMinRed().toString());
        Self.minGreenJTextField.setText(imageColorResults_.getColorRange().getMinGreen().toString());
        Self.minBlueJTextField.setText(imageColorResults_.getColorRange().getMinBlue().toString());
        Self.maxRedJTextField.setText(imageColorResults_.getColorRange().getMaxRed().toString());
        Self.maxGreenJTextField.setText(imageColorResults_.getColorRange().getMaxGreen().toString());
        Self.maxBlueJTextField.setText(imageColorResults_.getColorRange().getMaxBlue().toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

